---
layout: page
title: STATA Code Examples
permalink: /stata-code/
---

This page demonstrates STATA code syntax highlighting and examples.

## Basic STATA Commands

```stata
* Load data
use mydata.dta, clear

* Generate summary statistics
summarize price weight mpg

* Create a scatter plot
scatter price weight

* Run a regression
regress price weight mpg

* Display results
display "The regression is complete"
```

## Advanced STATA Example

```stata
* Data preparation and analysis
clear all
set more off

* Load the auto dataset
sysuse auto, clear

* Label variables
label variable price "Price (USD)"
label variable weight "Weight (lbs)"
label variable mpg "Miles per gallon"

* Generate log variables
generate ln_price = ln(price)
generate ln_weight = ln(weight)

* Run regressions
quietly regress ln_price ln_weight mpg foreign
estimates store model1

quietly regress ln_price ln_weight mpg foreign i.rep78
estimates store model2

* Display results table
estimates table model1 model2, b(%9.3f) star stats(N r2)

* Test for heteroskedasticity
estat hettest

* Generate predicted values
predict yhat, xb
predict residuals, residuals

* Create diagnostic plots
scatter residuals yhat, title("Residuals vs Fitted Values")
graph export "residuals_plot.png", replace
```

## Econometric Analysis Example

```stata
* Panel data analysis
use panel_data.dta, clear

* Set panel structure
xtset id year

* Fixed effects regression
xtreg outcome treatment control1 control2, fe

* Random effects regression
xtreg outcome treatment control1 control2, re

* Hausman test
hausman fe re

* Instrumental variables
ivreg2 outcome control1 control2 (treatment = instrument), first

* Bootstrap standard errors
bootstrap, reps(1000): regress outcome treatment control1 control2
```

## Data Manipulation

```stata
* Merge datasets
use master.dta, clear
merge 1:1 id using secondary.dta

* Reshape data
reshape wide value, i(id) j(year)
reshape long value, i(id) j(year)

* Generate variables with conditions
generate new_var = .
replace new_var = 1 if condition1 == 1
replace new_var = 0 if condition1 == 0

* Loop through variables
foreach var of varlist x1-x10 {
    generate ln_`var' = ln(`var')
}

* Macro usage
local controls "age education income"
regress outcome treatment `controls'
```

This page demonstrates proper STATA syntax highlighting for academic research code.