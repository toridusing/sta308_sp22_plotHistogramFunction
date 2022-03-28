
source("plotRandomFunction.R")
  ##this tells R to open & run ALL code in the file plotRandomFunction.R
  ##must run again if you update the other file

plotRandom
plotRandom(n=20)
plotRandom(n=1000)
plotRandom(n=53)

plotRandom(n=60,mu=70,sigma=2.3)

##  need more breaks for larger sample size
plotRandom(n=60000, mu=70, sigma=2.3, hist_breaks =30)

####################################

set.seed(20220318)
  ##sets "same" random sample (run them together)
plotRandom(n=20)

####################################################
## playing around w/ bin sizes to understand hist() works

set.seed(1)
x <- rnorm(n=200)

#cutomize bin size
hist(x)
hist(x,breaks=1) ## 2 categories
hist(x,breaks=0) ##doesn't work bc have to have at least 2 bins
hist(x,breaks=3) ## 4 categories
hist(x,breaks=12) ## 13 categories
hist(x, breaks=50)

#####################################################
## modify function to...

## 1. prevent user from specifying neg number
    plotRandom(n=-20) #n should be positive
    
## 2. if user specifies positive "real" number, tell them what value is actually being used
    plotRandom(n=43.5234)
    x <- rnorm(n=43.5234)
    length(x) #appears to be truncating to 43

    plotRandom(n=-43.432)
    plotRandom(n="thrity")
