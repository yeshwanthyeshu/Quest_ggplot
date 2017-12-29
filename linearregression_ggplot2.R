# this graph is linear regresssion with confidence interval of default 95%
# change method to 'auto' to have gaussian
png(file="linearregression_lineplot.png") 
# generate the factor for color use
mtcars$cylFactor <- factor(mtcars$cyl)
ggplot(mtcars,aes(x=mpg,y=wt,color=cylFactor))+geom_point(shape=19)+geom_smooth(method='lm',se=TRUE,color='red')+labs(color="cylinders")+labs(x="Miles per gallon",y="no of cylinders")+ggtitle("Milleage regression")
dev.off()