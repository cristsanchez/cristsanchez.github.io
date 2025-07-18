---
layout: page
title: Code
permalink: /code/
---

### Stata Commands

#### binsreg

A user-created binscatter regression command for Stata. This command provides flexible binscatter regression analysis with various options for economic research.

**Download:** <a href="files/binsreg.ado" target="_blank">binsreg.ado</a>

**Usage:**
```stata
binsreg y x [if] [in] [, options]
```

**Description:**
The `binsreg` command performs binscatter regression analysis, allowing researchers to explore nonlinear relationships between variables using binned scatter plots and regression lines.

**Options:**
- `bins(#)`: Number of bins to use (default: 20)
- `polynomial(#)`: Polynomial degree for fitting (default: 1)
- `absorb(varlist)`: Variables to absorb (fixed effects)

**Examples:**
```stata
* Basic binscatter regression
binsreg wage education

* With more bins and quadratic fit
binsreg wage education, bins(50) polynomial(2)

* With fixed effects
binsreg wage education, absorb(state year)
```

**Installation:**
1. Download the `binsreg.ado` file
2. Place it in your Stata ado directory or current working directory
3. Use the command as shown above

For questions or issues, please contact: csanchez@bcentral.cl