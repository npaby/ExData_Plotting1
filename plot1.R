#Import data
importData <- read.csv2("./household_power_consumption.txt")
#Subset the data
subsettedData <- subset(importData,importData$Date== c("1/2/2007","2/2/2007"))
##head(subsettedData)
#Plot the data
hist(as.numeric(subsettedData$Global_active_power),col="red",main="Global Active Power",xlab="Global Active Power in kw")
#Export the graph in png file
png("plot1.png", width=480, height=480)
#Turn the device off
dev.off()
