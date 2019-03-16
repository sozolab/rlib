# Userful R functions.
# How to load:
# library(devtools)
# source_url('https://gist.githubusercontent.com/sozolab/f99e0d7515133b2e7cfdffe087da99ed/raw/lib.R')

#abbreviation
s = summary
p = print

# Make + for strings
"+" <-function(x, y=0){
  if (is.character(x)){
    paste(as.character(x),as.character(y), sep="")
  } else{
    base::"+"(x,y)
  }
}

#text evaluation
eval_text = function(text)eval(parse(text=text))

#install packages if not 
library <- function(package){
  package=deparse(substitute(package))
  if(!(package %in% installed.packages())) #if not installed yet.
    install.packages(package,repos = "https://cran.ism.ac.jp")
  eval_text("base::library("+package+")")
}


library(dplyr)
library(magrittr)
library(tidyr)
