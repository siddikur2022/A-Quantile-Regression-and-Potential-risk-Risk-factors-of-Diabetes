#install.packages("foreign")
#install.packages("moments")
library(foreign)
library(lqmm)
library(quantreg)

d<-read.spss(file.choose(),header=TRUE,to.data.frame=T)
names(d)
dim(d)
str(d)
attach(d)
head(d)

library(moments)
skewness(Fasting)
kurtosis(Fasting)
summary(Fasting)



quant1<-rq(Fasting~Division+Residence+
Wealth+Age+Job+BMI+Hyper_2+Occupation,data=d,tau=c(.1,.25,.5,.75,.9))
summary(quant1)
anova(quant1,test="Wald",joint=T)

########################### plot #################
par(mfrow=c(1,2))
hist(Fasting, breaks=40, freq = FALSE, main="", xlab="Fasting")
lines(density(Fasting),lty=1,lwd=2,col="blue")

xfit<-seq(min(Fasting),max(Fasting),length=length(Fasting))
yfit<-dnorm(xfit,mean=mean(Fasting),sd=sd(Fasting))
lines(xfit, yfit, lty=1,lwd=2,col="red")

legend("topright",
           legend=c("Fasting Density", "Gaussian Density"),
           lty=c(1,1),lwd=c(2,2),
           col=c("blue","red"),cex=.75,horiz=F,bty="n")
boxplot(Fasting,col="blue",xlab="Fasting")




par(mfrow=c(1,2))

qqnorm(Fasting, ylab="Height-for-age", xlab="QQ Plot")
qqline(Fasting)
boxplot(Fasting,col="blue",xlab="Boxplot")

qqPlot(Fasting,ylab='FPG',xlab='QQplot')
lillie.test(Fasting)
ks.test(Fasting,"pnorm",alternative="g")
S
library(car)
library(qqplotr)
library(nortest)
#install.packages("car")
#install.packages("nortest")

summary(Fasting)
sd(Fasting)
quantile(Fasting,probs=c(.10,.25,.50,.75,.9))
