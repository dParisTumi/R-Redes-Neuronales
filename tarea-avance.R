library(neuralnet)
entrada1 = data.frame(e1 =c(1,2,4,1,2))
entrada2 = data.frame(e2 =c(2,3,5,1,3))
data_entrenamiento = data.frame(train =c(3,5,9,2,5))


#modelo
modelo= neuralnet(train ~ e1+e2,
                  data=cbind(entrada1, entrada2, data_entrenamiento),
                  hidden= c(4,3,2),
                  linear.output = TRUE)
summary(modelo)
plot(modelo)

#predicion
prediccion = predict(modelo, entrada1,entrada2)
print(predicion)