data=read.csv("dataset-doblenumero.csv")
library(neuralnet)

print(data)
data$doble = as.factor(data$doble)
trainIndex=sample(1:nrow(data), 0.8*nrow(data))
trainData=data[trainIndex, ]


testData=data[-trainIndex, ]

modelo= neuralnet( doble~numero,
                  data=trainData,
                  hidden= c(4,3,2),
                  linear.output = TRUE)

predicion=predict(modelo, testData)
print(predicion)

print(testData)