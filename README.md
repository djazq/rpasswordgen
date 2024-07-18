
<!-- README.md is generated from README.Rmd. Please edit that file -->

# rpasswordgen

<!-- badges: start -->
<!-- badges: end -->

The goal of rpasswordgen is to generate one or multiple secure passwords

## Installation

You can install the development version of rpasswordgen from
[GitHub](https://github.com/djazq/rpasswordgen) with:

``` r
# install.packages("remotes")
remotes::install_github("djazq/rpasswordgen")
```

## Example

This is a basic example which shows you how to solve a common problem:

``` r
library(rpasswordgen)
## basic example code
# Generate a 12-character password with only lowercase and numbers
generate_password(12, use_upper = FALSE, use_lower = TRUE, use_numbers = TRUE, use_special = FALSE)
#> [1] "9e2dqqn5tu6o"
# Generate 3 passwords, each 12 characters long with only lowercase and numbers
generate_multiple_passwords(3, 12, use_upper = FALSE, use_lower = TRUE, use_numbers = TRUE, use_special = FALSE)
#> [1] "936epynofdlu" "xy4j12j1cyff" "8mr6ys1gki04"
```
