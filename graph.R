

x<-c(0.10,0.25,0.50,0.75,0.90);x
par(mfrow=c(3,3), mar=c(4,4,2,2))

y1<-c(-0.376,-0.355,-0.32727,-0.28955,-0.3)
y2<-c(-0.27,-0.2425,-0.25455,-0.21343,-0.23333)
y3<-c(-0.34,-0.33,-0.38182,-0.43433,	-0.6)
y4<-c(-0.3,-0.3575,-0.33636,-0.33731,-0.5)
y5<-c(-0.372,-0.435,-0.46364,-0.4597,-0.5)
y6<-c(-0.4,-0.4475,-0.47273,-0.50746,-0.7)
y7<-c(-0.364,-0.3475,-0.35455,-0.34478,-0.46667)
plot(x,y1,type='b',main='Division of Respondents',lty=1,col=1,,pch=18,xlim=c(0,1),ylim=c(-1,2.5),xlab="Quantile",ylab="Estimate",lwd=1.5)
lines(x,y2,type='b',pch=19,col=2,lty=2,lwd=1.5)
lines(x,y3,type='b',pch=20,col=3,lty=3,lwd=1.5)
lines(x,y4,type='b',pch=21,col=4,lty=4,lwd=1.5)
lines(x,y5,type='b',pch=22,col=5,lty=5,lwd=1.5)
lines(x,y6,type='b',pch=23,col=6,lty=6,lwd=1.5)
lines(x,y7,type='b',pch=24,col=7,lty=7,lwd=1.5)
legend("topleft",c("Chattogram","Barishal","Khulna","Mymensingh","Rajshahi","Rangpur",
                   "Sylhet"),ncol=2,pch=c(18,19,20,21,22,23,24),col=c(1,2,3,4,5,6,7),lty=c(1,2,3,4,5,6,7))


rural<-c(-0.024,	-0.0325,	-0.00909,	0.02239,	0.06667)
plot(x,rural,type='b',main='Residence (Rural)',lty=1,col=1,,pch=18,xlim=c(0,1),ylim=c(-.1,0.1),lwd=1.5,xlab="Quantile",ylab="Estimate")


poorer<-c(0.032,	0.02,	0.01818,	-0.00746,	-0.03333)
middle<-c(0.044,	0.0425,	0.03636,	0.04627,	0.1)
Rich<-c(0.124,	0.125,	0.15455,	0.14776,	0.26667)
Richest<-c(0.32,	0.3125,	0.30909,	0.39403,	0.73333)
plot(x,poorer,type='b',main='Wealth index',lty=1,col=1,lwd=1.5,pch=18,xlim=c(0,1),ylim=c(-.1,1),xlab="Quantile",ylab="Estimate")
lines(x,middle,type='b',pch=19,col=4,lty=2,lwd=1.5)
lines(x,Rich,type='b',pch=20,col=5,lty=3,lwd=1.5)
lines(x,Richest,type='b',pch=21,col=6,lty=4,lwd=1.5)
legend("topleft",c("Poorer","Middle","Rich","Richest"),pch=c(18,19,20,21),col=c(1,4,5,6),lty=c(1,2,3,4))




age25<-c(0.12,	0.125,	0.09091,	0.14776,	0.16667)
age35<-c(0.252,	0.2175,	0.18182,	0.32836,	0.5)
age45<-c(0.252,	0.2275,	0.24545,	0.36866,	0.8)
age55<-c(0.168,	0.175,	0.28182,	0.42985,	0.83333)
age65<-c(3.45941,	0.1875,	0.22727,	0.34478,	0.5)
plot(x,age25,type='b',main='Current Age',lty=1,col=1,lwd=1.5,pch=18,xlim=c(0,1),ylim=c(-.1,3.5),xlab="Quantile",ylab="Estimate")
lines(x,age35,type='b',pch=19,col=2,lty=2,lwd=1.5)
lines(x,age45,type='b',pch=20,col=3,lty=3,lwd=1.5)
lines(x,age55,type='b',pch=21,col=7,lty=4,lwd=1.5)
lines(x,age65,type='b',pch=22,col=5,lty=5,lwd=1.5)
legend("topright",c("Age 25-34","Age 35-44","Age 45-54","Age 55-64","Age 65+"),
       pch=c(18,19,20,21,22),col=c(1,2,3,7,5),lty=c(1,2,3,4,5))



job<-c(-0.108,	-0.03,	0.01818,	0.04478,	0.06667)
plot(x,job,type='b',main='Current Employment (Yes)',lty=1,col=1,lwd=1.5,pch=18,xlim=c(0,1),ylim=c(-.15,0.5),xlab="Quantile",ylab="Estimate")


BMIn<-c(0.08,	0.0425,	0.05455,	0.04776,	0.1)
BMIo<-c(0.172,	0.135,	0.17273,	0.19104,	0.53333)
BMIob<-c(0.288,	0.22,	0.28182,	0.35522,	0.9)
plot(x,BMIn,type='b',main="Mother's BMI",lty=1,col=1,lwd=1.5,pch=18,xlim=c(0,1),ylim=c(-.1,1.5),xlab="Quantile",ylab="Estimate")
lines(x,BMIo,type='b',pch=19,col=4,lty=2,lwd=1.5)
lines(x,BMIob,type='b',pch=20,col=5,lty=3,lwd=1.5)
legend("topleft",c("Normal","Overweight","Obese"),pch=c(18,19,20),col=c(1,4,5),lty=c(1,2,3))

hyper<-c(0.024,	-0.035,	-0.02727,	-0.08209,	-0.53333)
plot(x,hyper,type='b',main='Hypertention (No)',lty=1,col=1,lwd=1.5,pch=18,xlim=c(0,1),ylim=c(-1,1),xlab="Quantile",ylab="Estimate")

physical<-c(-0.068,	0.02,	0.06364,	0.10299,	0.23333)
plot(x,physical,type='b',main='Physical Activity (No)',lty=1,col=1,lwd=1.5,pch=18,xlim=c(0,1),ylim=c(-.1,0.5),xlab="Quantile",ylab="Estimate")


INTERCEPT<-c(4.516,	4.965,	5.37273,	5.82687,	6.63333)
plot(x,INTERCEPT,type='b',main='Intercept',lty=1,col=1,lwd=1.5,pch=18,xlim=c(0,1),ylim=c(1,7),xlab="Quantile",ylab="Estimate")

