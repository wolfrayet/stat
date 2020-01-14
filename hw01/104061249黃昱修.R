# set path
setwd("/Users/YvonneHuang/program/stat/hw01")

# load packages
library(moments)
library(pracma)

# read file and transverse into vector form
DBH <- read.table("DBH.txt",header=T)
DBH <- DBH$dbh

# sample 
x <- sample(DBH,116,replace=F)

# average; median
mean(x); median(x)

# mode
pracma::Mode(x)

# standard deviation; variance
sd(x); var(x)

# min; max
min(x); max(x)

# sum; data number; range
sum(x); length(x); range(x)

# skewness; kurtosis
moments::skewness(x); moments::kurtosis(x)

# standard error
sd(x)/sqrt(length(x))

# plot histogram
hist(x, breaks=seq(0,30,by=1))

# 10%, 25%, 50%, 75%, 90%
quantile(x,c(0.1,0.25,0.5,0.75,0.9))