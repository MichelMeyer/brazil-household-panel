proj.path <- "/home/johndoe/PNAD"
setwd(proj.path)


source("src/R/clean.R")
## clean.R provides: `getcoldict`, `pnad.get.downloaded`, `pnad.raw.read`,
##                   `pnad.read`

source("src/R/common.R")
## common.R provides:
##  - `lexicompare`




# Get reading dictionary
dict.filename <- paste(proj.path, "data/Input_PNADC_trimestral.txt", sep="/")
coldict  <- getcoldict(dict.filename) # Required for `pnad.read`

startyear  <- 2012
startqtr  <- 01
endyear  <-  2012
endqtr  <- 02

pnad.data.path <- paste(proj.path, "data", sep="/")
list_dt <- pnad.read(pnad.data.path, coldict,
                     startyear, startqtr, endyear, endqtr)


