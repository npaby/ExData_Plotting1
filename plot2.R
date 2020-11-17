#Import the data
importData <- read.csv2("./household_power_consumption.txt")
#Subset the data
subsettedData <- subset(importData,importData$Date== c("1/2/2007","2/2/2007"))
#Set date and time specifically and store it to dateAndTime variable
dateAndTime <- strptime(paste(subsettedData$Date, subsettedData$Time, sep=" "), "%d/%m/%Y %H:%M:%S") 
#Plot the data with the date and time as X-axis, and Global active power as y-axis
plot(dateAndTime,subsettedData$Global_active_power, type="l", xlab="", ylab="Global Active Power in kw")
#Export the data
png("plot2.png", width=480, height=480)
#Turn of the device
dev.off()
