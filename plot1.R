data<-read.table('household_power_consumption.txt',sep=';')
elec<-subset(data,data[,1]== c('1/2/2007', '2/2/2007'))
colnames(elec)<-data[1,]
hist(as.numeric(elec[,3])/1000,breaks=15,col="red",xlab="Global Active Power (kilowatts)",main="Global Active Power" )
dev.copy(png, file = "plot1.png", width = 480, height = 480)
dev.off()

