# R studio Swirl lessons 

## Dependencies
- R version 4.0.2
- R Studio version 1.3.1093
- libcurl4-openssl-dev

## R packages
Intall the packages described on the main README.md and:

- curl
- httr

## Installing packages
Use install.packages() from R studio console:

```R
> install.packages("swirl", dependencies = TRUE)
> install.packages("curl", dependencies = TRUE)
> install.packages("httr", dependencies = TRUE)
```

## Run

```R
> library(swirl)
> select_language()
# Select (9: spanish).
> install_course_github("ifunam", "programacion-estadistica-r")
> swirl()
```

