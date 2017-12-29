png(file="piechart_example.png")
newbarp <- ggplot(mtcars, aes(x=1, y=sort(mtcars$carb),xlab="my x" fill=sort(mtcars$carb)))+geom_bar(stat="identity")
newbarp <- newbarp + coord_polar(theta='y')
newbarp <- newbarp + theme(
	axis.line = element_blank(),
	axis.text.x = element_blank(),
	axis.text.y = element_blank(),
	axis.ticks = element_blank(),
	axis.title = element_blank(),
	panel.background = element_blank()
)+labs(y='Carburetors')
print(newbarp)
dev.off()