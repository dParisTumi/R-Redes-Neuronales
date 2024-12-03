# importamos el paquete
install.packages("neuralnet")
library(neuralnet)
data=read.csv("ds.csv")
print(data)
data$estado = as.factor(data$estado)
set.seed(123)
trainIndex=sample(1:nrow(data), 0.8*nrow(data))
trainData=data[trainIndex, ]


testData=data[-trainIndex, ]

model=neuralnet(
  estado~nota,
  data=trainData,
  hidden=c(5),
  linear.output = FALSE,
  stepmax = 1e6
)

predicion=predict(model, testData)
print(predicion)
predicion_class = apply(predictions, 1,which.max)
print(predicion_class)
print(testData)