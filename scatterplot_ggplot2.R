#the following is the basic version of scatter plot
#qplot(mpg,wt,data=mtcars)


# the following is the scatter plot by using ggplot2 library
png(file="beautiful_scatter_cylinders.png")
# this creates the factor for grouping
mtcars$cylFactor <- factor(mtcars$cyl)
#print(mtcars$cylFactor)
ggplot(mtcars,aes(x=mpg,y=wt,color=cylFactor,shape=cylFactor))+geom_point()+labs(color="cylinders")
dev.off()