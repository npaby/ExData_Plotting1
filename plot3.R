#Import the data
importData <- read.csv2("./household_power_consumption.txt")
#Subset the data
subsettedData <- subset(importData,importData$Date== c("1/2/2007","2/2/2007"))
#Set date and time in specific format
dateAndTime <- strptime(paste(subsettedData$Date, subsettedData$Time, sep=" "), "%d/%m/%Y %H:%M:%S") 
#Set legend names  ( Lazy )
submeters <- c("Sub_metering_1","Sub_metering_2","Sub_metering_3")
#Set legend colors ( Lazy )
subcolors <- c("black","red","blue")
#Plot the data
plot(dateAndTime,subsettedData$Sub_metering_1, type="l",ylab="Energy Submettering",xlab="")
lines(dateAndTime,subsettedData$Sub_metering_2,col="red")
lines(dateAndTime,subsettedData$Sub_metering_3,col="blue")
#Set the legend
legend("topright",submeters,lty=1,lwd=2,col=subcolors)
#Export the data in png format
png("plot3.png", width=480, height=480)
#Set device off
dev.off()
