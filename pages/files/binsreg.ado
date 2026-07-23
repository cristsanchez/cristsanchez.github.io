*! binsreg v1.0 - Binscatter regression command
*! Created by Cristián Sánchez
*! Date: 2025

program define binsreg, eclass
    version 14.0
    
    syntax varlist(min=2 max=2) [if] [in] [, ///
        bins(integer 20) ///
        polynomial(integer 1) ///
        absorb(varlist) ///
        nograph ///
        savegraph(string) ///
        title(string) ///
        xtitle(string) ///
        ytitle(string) ///
        ]
    
    marksample touse
    
    tokenize `varlist'
    local yvar `1'
    local xvar `2'
    
    quietly {
        * Create bins
        tempvar xbin
        xtile `xbin' = `xvar' if `touse', nq(`bins')
        
        * Calculate bin means
        tempvar binmean_x binmean_y
        bys `xbin': egen `binmean_x' = mean(`xvar') if `touse'
        bys `xbin': egen `binmean_y' = mean(`yvar') if `touse'
        
        * Remove duplicates for plotting
        tempvar first
        bys `xbin': gen `first' = _n == 1 if `touse'
        
        * Run regression
        if "`absorb'" != "" {
            * With fixed effects
            areg `yvar' `xvar' if `touse', absorb(`absorb')
        }
        else {
            * Simple regression
            reg `yvar' `xvar' if `touse'
        }
        
        * Store results
        ereturn post
        ereturn scalar N = e(N)
        ereturn scalar r2 = e(r2)
        ereturn scalar bins = `bins'
        ereturn local depvar "`yvar'"
        ereturn local indepvar "`xvar'"
        ereturn local cmd "binsreg"
        
        * Display results
        noisily {
            di as text "Binscatter regression results"
            di as text "Dependent variable: " as result "`yvar'"
            di as text "Independent variable: " as result "`xvar'"
            di as text "Number of bins: " as result `bins'
            di as text "Observations: " as result e(N)
            di as text "R-squared: " as result %9.4f e(r2)
            
            * Display coefficient table
            reg `yvar' `xvar' if `touse'
        }
        
        * Create graph if requested
        if "`nograph'" == "" {
            tempname gph
            
            local gtitle = cond("`title'" != "", "`title'", "Binscatter: `yvar' vs `xvar'")
            local gxtitle = cond("`xtitle'" != "", "`xtitle'", "`xvar'")
            local gytitle = cond("`ytitle'" != "", "`ytitle'", "`yvar'")
            
            scatter `binmean_y' `binmean_x' if `first' & `touse', ///
                title("`gtitle'") ///
                xtitle("`gxtitle'") ///
                ytitle("`gytitle'") ///
                || lfit `yvar' `xvar' if `touse', ///
                legend(off) ///
                name(`gph', replace)
            
            if "`savegraph'" != "" {
                graph export "`savegraph'", replace
            }
        }
    }
end