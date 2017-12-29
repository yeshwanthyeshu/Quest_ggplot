# this code generates the plot and save in png
# this is code that generates a pie chart and save in my documents
# todo: fix that this code is not working when runnin from editor
x <-c(2,4,5,1)
y <- c('one','two','three','four')
jpeg('savefromReditor.jpg')
pie(x,y)
dev.off()