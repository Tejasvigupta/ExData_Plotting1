data<-read.csv("household_power_consumption.csv",header = TRUE)
subSetData <- data[data$Date %in% c("1/2/2007","2/2/2007") ,]
subSetData$Global_active_power<-as.numeric(subSetData$Global_active_power)
png(file="plot1.png",
width=480, height=480)
with(data,hist(subSetData$Global_active_power,col="red",main="Global Active Power",xlab="Global Active Power(kilowatts)"))
dev.off()
