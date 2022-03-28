##########################
##
## plotRandomFunction.R
##
## Tori Dusing
## March 18, 2022
##  -Ammended March 28 for error checking
##
## A function that generates 
##  a sequence of random normal variables
##  and makes a histogram.
##
## The function expects the following inputs
##      n - sample size (default is n = 1)
##      mu - mean of normal distribution (default is mu = 0)
##      sigma - sd of normal distribution (default is sigma = 1)
##      hist_breaks - number of breaks in histogram (default is hist_breaks = 6)
##
## based on code from Friday March 11
# plotRandom <- function(n=1) {
#    hist(rnorm(n=n, mean=0, sd=1) )
#  }



##is.wholenumber() is from help(is.integer)
is.wholenumber <- function(x, tol = .Machine$double.eps^0.5) {
  abs(x - round(x)) < tol
}


## user can specify mean, sd, #breaks
plotRandom <- function(n=1, mu=0, sigma=1, hist_breaks=6) {
  
  if(n < 0) {
    stop("Sample size n must be positive")
  }
  
  if(!is.wholenumber(n)) {
    warning(paste("Sample size n should be a whole number\n R is using n=floor(n)=", floor(n)))
  }
  
    hist(rnorm(n=n, mean=mu, sd=sigma), breaks=hist_breaks)
}


