# Q1
high <- c(25.82,25.35,24.29,24.05,24.89,25.35,25.23,25.06,27.13,27.36,
          26.65,27.13,27.49,27.08,27.51,27.54,26.21)
low <- c(18.24,16.50, 20.26,20.97,19.43,19.31,20.85,19.54,20.49,21.91,
         22.54,18.81,19.42,19.10,18.80,18.80,17.57)
fit = lm(high ~ low)
m = summary(fit)
m
data <- cbind(low, high, fit$fitted.values)
m$sigma
new.data = data.frame(low = 20)
predict(fit, newdata = new.data, interval = "confidence")
predict(fit, newdata = new.data, interval = "predict")

# Q2
x <- c(5.00,6.00,3.40,2.70,10.00,9.70,9.55,3.05,8.15,6.20,2.90,6.35,4.60,
       5.80,7.40,3.60,7.85,8.80,7.00,5.45,9.10,10.20,4.10,3.95,2.45)
y <- c(1.58,1.82,1.06,0.50,2.24,2.39,2.29,0.56,2.17,1.87,0.65,1.93,1.56,
       1.74,2.09,1.14,2.18,2.11,1.80,1.50,2.30,2.31,1.19,1.14,0.12)
fit = lm(y ~ x)
m = summary(fit)
m
m$sigma
new.data = data.frame(x = 4.85)
predict(fit, newdata = new.data, interval = "confidence")
predict(fit, newdata = new.data, interval = "predict")
