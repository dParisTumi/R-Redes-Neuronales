nombres=c("Juan","Ana","Carlos","laura","pedro")
dias_trabajados=c(5,15,10,2,12)
sueldo_por_dia_=c(20,12,15,30,9)
empleados=data.frame(Nombres=nombres, Dias_Trabajados = dias_trabajados, Sueldo_Por_Dia= sueldo_por_dia_)
empleados$Total= empleados$Dias_Trabajados *empleados$Sueldo_Por_Dia
empleados$Excedente= ifelse(empleados$Total > 100, "si", "no")
print(empleados)
barplot(empleados$Total,
        names.arg = empleados$Nombres,
        col ="skyblue",
        main = "Total de Sueldo por Empleado",
        xlab ="Nombre",
        ylab="Total de Sueldo",
        border="white")