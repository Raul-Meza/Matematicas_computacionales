mean(WWWusage)
## [1] 137.08
min(WWWusage)
## [1] 83
max(WWWusage)
## [1] 228
sum(WWWusage)
## [1] 13708
sd(WWWusage)
## [1] 39.99941
Users<-c(2823,3707,2967,4211)
barplot(Users,ylim=c(0,4500), xlim = c(0,4.5), main="Internet Users over 100 minutes \n in 25 Minute Increments", ylab="Numero de usuarios en internet",names.arg = c("1 a 25 Minutos","26 a 50 Minutos","51 a 75 Minutos","76 a 100 Minutas"),col="lightblue")
text(.7,3000,"2823")
text(1.9,3850,"3707")
text(3.1,3150,"2967")
text(4.3,4400,"4211")
lbls<-c("1 a 25 Minutos","26 a 50 Minutos","51 a 75 Minutos","76 a 100 Minutos")
pct<-round((Users/13708)*100)
lbls<-paste(lbls,pct)
lbls<-paste(lbls,"%",sep="")
pie(Users,labels = lbls, main = "Internet Users over 100 minutes \n in 25 Minute Increments")
plot(WWWusage,type="o",col="red",xlab="Minutos",ylab="Numero de Visitantes",main="Numero de visitantes al server \n por minuto")
hist(WWWusage, breaks=4,labels = TRUE,col="green",ylim=c(0,50))

