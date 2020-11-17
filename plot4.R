#Import the data
importData <- read.csv2("./household_power_consumption.txt")
#Subset the data
subsettedData <- subset(importData,importData$Date== c("1/2/2007","2/2/2007"))
##Set date and time specifically and store it to dateAndTime variable
dateAndTime <- strptime(paste(subsettedData$Date, subsettedData$Time, sep=" "), "%d/%m/%Y %H:%M:%S") 
#Make one canvas for 4 data to graph
par(mfrow = c(2, 2)) 
#Plot the 4 data required
##Plot 1
plot(dateAndTime, as.numeric(subsettedData$Global_active_power), type="l", xlab="", ylab="Global Active Power")
##Plot 2
plot(dateAndTime, subsettedData$Voltage, type="l", xlab="Date and Time", ylab="Voltage")
##Plot 3
plot(dateAndTime,subsettedData$Sub_metering_1, type="l",ylab="Energy Submettering",xlab="")
lines(dateAndTime,subsettedData$Sub_metering_2,col="red")
lines(dateAndTime,subsettedData$Sub_metering_3,col="blue")
legend("topright",submeters,lty=1,lwd=2,col=subcolors)
##Plot 4
plot(dateAndTime, subsettedData$Global_reactive_power, type="l",xlab = "Date and Time",ylab="Global Reactive Power")
#Export as png format
png("plot4.png", width=480, height=480)
#Turn off the device
dev.off()
