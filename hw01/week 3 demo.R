######################## 1.########################


#���ᤣ��^
X1 = sample(x = 1:365, size = 40, replace = F) ; X1 

#�����^
X2 = sample(x = 1:365, size = 40, replace = T) ; X2


######################## 2.########################


X3 = runif(n = 40, min = 0, max = 1) ; X3


######################## 3.########################


#�Ĥ@��
Y1 = sample(x = X1, size = 10, replace = F) ; Y1 

#�ĤG��
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

##���|�C�ӤH���@��

setwd("C:/Users/stat_nb_A1/Desktop")

#Ū������ɮ�
DBH <- read.table("DBH.txt", header=T)
DBH <- DBH$dbh

# �H�����
DBH_sample <- sample(DBH,1118, replace =F)

#�U��"pracma" packages (practical math function)
install.packages("pracma")
install.packages("moments")

#���J"pracma" �M "moments" packages
library(pracma)
library(moments)

#������; �����
mean(DBH_sample); median(DBH_sample)

#����
pracma::Mode(DBH_sample)

#�зǮt; �ܲ���
sd(DBH_sample); var(DBH_sample)

#�̤p��; �̤j��
min(DBH_sample); max(DBH_sample)

#�`�X; �Ӽ�; �d��
sum(DBH_sample); length(DBH_sample); range(DBH_sample)

#���A; �p�A
skewness(DBH_sample); kurtosis(DBH_sample)

#�зǻ~
sd(DBH_sample)/sqrt(length(DBH_sample))




#��N������
mean(DBH_sample)



#�X�󥭧���
g.mean <- function(x) prod(x)^(1/length(x))  #(��Ʀh�|�X�{Inf)
g.mean1 <- function(x) exp(mean(log(abs(x))))   #(�A�ΦU�ظ��)
g.mean(DBH_sample)
g.mean1(DBH_sample)



#�թM������
h.mean <- function(x) length(x)/sum(1/x)
h.mean1 <- function(x) 1/mean(1/x)
h.mean(DBH_sample)
h.mean1(DBH_sample)



quantile(DBH_sample, c(0,0.1,0.25,0.5,0.75,0.9,1))
table(cut(DBH_sample, breaks = seq(0,30,by=6)))

hist(DBH_sample, breaks =20)


