# this is the multiple line graphs for the built in EuStockMarkets data set 
# note: all the plots should be in same.
# todo: legends are not introduce : know it how to include them and complete this.
png(file="MultipleLine_Eustock.png")
mydata <- as.data.frame(EuStockMarkets)
ggplot(mydata,aes(x=c(1:nrow(mydata)),y=DAX))+geom_line()+labs(x="Day",y="Price")+ggtitle("Europe stocks ")+geom_line(data=mydata,aes(x=c(1:nrow(mydata)),y=SMI),color="red")+geom_line(data=mydata,aes(x=c(1:nrow(mydata)),y=CAC),color="blue")+geom_line(data=mydata,aes(x=c(1:nrow(mydata)),y=FTSE),color="green")+scale_color_manual(values=c('#999999','#E69F00'))
dev.off()