nombres<-c('A','B','C')
edades<-c(15,18,10)
ds=data.frame(Nombre=nombres, Edades=edades)
esmayor=ifelse(ds$Edades>=18,"si","no")
ds$Esmayor = esmayor
print(ds)
barplot(ds$Edades)
