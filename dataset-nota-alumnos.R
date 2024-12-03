data=read.csv("notas_alumnos.csv")
data$promedio = (data$nota1+data$nota2+data$nota3)/3
print(data)
data$estado = ifelse(data$promedio > 17,"A",ifelse(data$promedio < 11 , "C", ifelse(data$promedio > 11 & data$promedio < 17, "B","B")))
print(data)
barplot(data$promedio,
        names.arg = data$alumno,
        col ="skyblue",
        main = "Promedio de notas por alumnos",
        xlab ="Nombre",
        ylab="Promedio notas",
        border="white")