# importamos el paquete
install.packages("neuralnet")
library(neuralnet)
x_train=data.frame(x=c(1,2,3,4,5))
y_train=data.frame(y=c(2,4,6,8,10))
model=neuralnet(y~x, data=cbind(x_train, y_train),hidden =0 , linear.output = TRUE)
x_test=data.frame(x=c(10))
print(predict(model,x_test))
plot(model)
