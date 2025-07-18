---
layout: page
permalink: /research/
title: Research

---

###  Publications:  

* <a href="https://www.latinaer.org/index.php/laer/article/view/198" target="_blank">**The Effects of Educated Leaders on Policy and Politics: Quasi-Experimental Evidence from Brazil**</a> *(with Paulo Bastos)*  
**Latin American Economic Review**, Vol. 33, 2024

###  Working Papers:  

* <a href="files/EquilibriumConsequencesVouchers.pdf" target="_blank">**Equilibrium Consequences of Vouchers Under Simultaneous Extensive and Intensive Margins Competition**</a>  
Revision requested at **Journal of Political Economy**

* <a href="files/for_and_non_profit.pdf" target="_blank">**The Effects of For-Profit and Nonprofit Subsidized Schools on Academic Performance**</a>  
Revision requested at **Economics of Education Review**

* <a href="files/dEPS.pdf" target="_blank">**The Effects of Credit on Firms' Performance: A Survey**</a> *(with Ramiro de Elejalde and Brian Pustilnik)*  
Reject and Resubmit at **Latin American Journal of Central Banking**

* <a href="files/EqmEffectsImmigrants.pdf" target="_blank">**Equilibrium Effects of Immigrants on School Competition**</a> *(with Faqiang Li, Diana Martínez and María Adelaida Martínez)*

* <a href="files/Gender_Pay_Gap_Teachers.pdf" target="_blank">**The Gender Wage Gap in a Highly Regulated Market**</a> *(with Paola Bordón, Ricardo Estrada, Roberto Gillmore and Miguel Sarzosa)*

* <a href="files/Risk_shifting_paper.pdf" target="_blank">**Risk-Shifting Incentives Under Government Credit Guarantees**</a> *(with Ramiro de Elejalde)*

* <a href="files/Rising Markups in the Banking Industry - Draft 30Abril2025.pdf" target="_blank">**Rising Markups in the Banking Industry**</a> *(with Sofía Arrendondo)*

* <a href="files/supply_side.pdf" target="_blank">**Supply-Side Responses to Targeted Vouchers**</a> *(with Gabriel Cañedo Riedel)*  
Coverage: <a href="https://blogs.worldbank.org/impactevaluations/whats-latest-research-development-economics-roundup-neudc-2021?CID=WBW_AL_BlogNotification_EN_EXT" target="_blank">Development Impact</a>

* <a href="files/Schooling_Labor_Vouchers.pdf" target="_blank">**The Schooling and Labor Market Effects of Vouchers**</a> *(with Tomás Rau and Sergio Urzúa)*

* <a href="files/skip_exam_draft.pdf" target="_blank">**The Design of Vouchers and Schools' Strategic Behavior: The Case of Chile**</a>

### Work in Progress:  

* Carrots and Sticks for Teacher Colleges: An Application for an Optimal Teacher Recruitment *(with Adam Kapor and Christopher Neilson)*

* Increasing Capacity at Elite High Schools Under Centralized Assignment *(with Arturo Aguilar, Adrián Martínez and Jorge Pérez)*

* Selection in Crisis Lending: Evidence from Chile *(with Lautaro Chittaro)*

* Comparative Analysis of Financing Mechanisms Using Combined Credit Registry and Transaction-Level Data *(with Felipe Brugués, Rebecca De Simone and Patricio Toro)*

* High Pay for High Performers in the Teaching Profession *(with Jorge Méndez and Mauricio Romero)*

<!-- * The Effects of Drug Cartel Presence on Education and Labor Market Outcomes *(with Patricio Ramos)*
 -->
* Inputs and the School Quality Effects of Targeted Vouchers *(with Gabriel Cañedo Riedel)*

* Price and Market Segmentation Consequences of Targeted Vouchers *(with Gabriel Cañedo Riedel and Emiliano Ramírez)*

* Are For-Profit Schools Worth Trying? Evidence Across Multiple Treatment Margins *(with René Nieto)*

<!-- * Relaxing Switching Costs through Pension Advisers *(with Conrado Cuevas)* -->

<!-- * Predicting Missing Geographic Coordinates *(with Gabriel Cañedo Riedel)* -->

* The Effects of an Information Intervention on Higher Education Decisions and Labor Market Outcomes

* To Profit or not to Profit? Evidence from Chile's For-Profit Voucher Schools

### Code Examples:

**Binscatter Plot for VAM Shrinkage Analysis**

```stata
binsreg q_vam_shrunk q_vam, ///
       xlabel(-3(1)2) ///
       ylabel(-3(1)2) ///
       plotxrange(-3 2) ///
       plotyrange(-3 2) ///
       xtitle("Original estimates") ///
       ytitle("Shrunk estimates") ///
       graphregion(color(white)) ///
       plotregion(margin(0 0 0 0)) /// 
       xsize(6) ysize(6) ///
       aspectratio(1) ///
       name(q_vam_shrunk_vs_q_vam_binsreg, replace)
```

*This code creates a binscatter plot comparing original and empirical Bayes shrunk estimates from Value-Added Model (VAM) analysis.*
