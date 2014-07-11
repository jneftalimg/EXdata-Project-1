data<-read.table('household_power_consumption.txt',sep=';')
elec<-subset(data,data[,1]== c('1/2/2007', '2/2/2007'))
colnames(elec)<-data[1,]
r<-as.Date(elec[,1],format="%d/%m/%Y")
plot(r,as.numeric(elec[,3])/1000,xlabel="",ylabel="Global Active Power (kilowatts)")
dev.copy(png, file = "plot2.png", width = 480, height = 480)
dev.off()

I<-nrow(elec)
for (i in I){
  
  paste(a,c(as.character(elec[i,1]),as.character(elec[i,2])),sep="/")
  r<-c(a)
}

lista <- c(as.character(elec[,1]),as.character(elec[,2]))
time <- as.Date(lista,format="%d/%m/%Y %X")
