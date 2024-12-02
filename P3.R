nombres=c("SUSSIE", "PEPE","ALBERTO")
nota1=c(12,7,20)
nota2=c(12,15,9)
nota3=c(12,8,7)

notas=data.frame(Nombres=nombres, Nota1 =nota1,Nota2 = nota2,Nota3=nota3)
print(notas)
notas$Promedio<-(notas$Nota1 + notas$Nota2 +notas$Nota3)/3
print(notas)
notas$Estado= ifelse(notas$Promedio > 18,"A",ifelse(notas$Promedio < 11,"C",ifelse(notas$Promedio >11 & notas$Promedio <18,"B","no tiene")))
barplot(notas$Promedio,
        names.arg = notas$Nombres,
        col ="skyblue",
        main = "Promedio de notas por alumnos",
        xlab ="Nombre",
        ylab="Promedio notas",
        border="white")