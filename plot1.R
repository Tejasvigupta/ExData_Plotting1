data<-read.csv("household_power_consumption.csv",header = TRUE)
data$Date<-as.Date(data$Date)
data$Global_active_power<-as.numeric(data$Global_active_power)
png(file="plot1.png",
width=480, height=480)
with(data,hist(Global_active_power,col="red",main="Global Active Power",xlab="Global Active Power(kilowatts)"))
dev.off()
