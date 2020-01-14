######################## 1.########################


#取後不放回
X1 = sample(x = 1:365, size = 40, replace = F) ; X1 

#取後放回
X2 = sample(x = 1:365, size = 40, replace = T) ; X2


######################## 2.########################


X3 = runif(n = 40, min = 0, max = 1) ; X3


######################## 3.########################


#第一組
Y1 = sample(x = X1, size = 10, replace = F) ; Y1 

#第二組
Y2 = sample(x = X2, size = 10, replace = F) ; Y2


######################## 4.########################


1 - prod(365:(365-30+1)) / (365)^30


######################## 5.########################


1 - prod(365:(365-30+1)) / (prod(365:(365-10+1)))^3


######################## 6.########################


f = function(n) 1 - prod(365:(365-n+1))/365^n

n = c(2:10, 15, 25, 30, 40, 50)

prob = sapply(n, f)

cbind(n, prob)

plot(x = n, y = prob, type = 'l')










###################################################

##路徑每個人不一樣

setwd("C:/Users/stat_nb_A1/Desktop")

#讀取資料檔案
DBH <- read.table("DBH.txt", header=T)
DBH <- DBH$dbh

# 隨機抽樣
DBH_sample <- sample(DBH,1118, replace =F)

#下載"pracma" packages (practical math function)
install.packages("pracma")
install.packages("moments")

#載入"pracma" 和 "moments" packages
library(pracma)
library(moments)

#平均數; 中位數
mean(DBH_sample); median(DBH_sample)

#眾數
pracma::Mode(DBH_sample)

#標準差; 變異數
sd(DBH_sample); var(DBH_sample)

#最小值; 最大值
min(DBH_sample); max(DBH_sample)

#總合; 個數; 範圍
sum(DBH_sample); length(DBH_sample); range(DBH_sample)

#偏態; 峰態
skewness(DBH_sample); kurtosis(DBH_sample)

#標準誤
sd(DBH_sample)/sqrt(length(DBH_sample))




#算術平均數
mean(DBH_sample)



#幾何平均數
g.mean <- function(x) prod(x)^(1/length(x))  #(資料多會出現Inf)
g.mean1 <- function(x) exp(mean(log(abs(x))))   #(適用各種資料)
g.mean(DBH_sample)
g.mean1(DBH_sample)



#調和平均數
h.mean <- function(x) length(x)/sum(1/x)
h.mean1 <- function(x) 1/mean(1/x)
h.mean(DBH_sample)
h.mean1(DBH_sample)



quantile(DBH_sample, c(0,0.1,0.25,0.5,0.75,0.9,1))
table(cut(DBH_sample, breaks = seq(0,30,by=6)))

hist(DBH_sample, breaks =20)



