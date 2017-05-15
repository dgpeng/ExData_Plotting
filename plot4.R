#Plot4.R
#extract data.zip to the working directory; 
data <- read.csv("household_power_consumption.txt", na.string="?", sep=";")
#read the data from just those two dates (from 2007-02-01 to 2007-02-02)
data <- data[(data$Date=="1/2/2007" | data$Date=="2/2/2007"),]
#Converting date
data$DateTime <- strptime(paste(data$Date, data$Time, sep=" "), format="%d/%m/%Y %H:%M:%S")
##datetime <- paste(as.Date(data$Date), data$Time)
#Generating Plot 4
png("plot4.png", width=480, height=480)

par(mfrow=c(2,2), mar=c(4,4,2,1), oma=c(0,0,2,0))
with(data, {
  plot(data$DateTime, data$Global_active_power, type="l", xlab="", ylab="Global Active Power (kilowatts)")
  plot(data$DateTime, data$Voltage, type="l", xlab="", ylab="Voltage (volt)")
  plot(data$DateTime, data$Sub_metering_1, type="l", xlab="", ylab="Energy sub metering")
  lines(data$DateTime, data$Sub_metering_2, col="red")
  lines(data$DateTime, data$Sub_metering_3, col="blue")
  legend("topright", col=c("black", "red", "blue"), 
         legend=c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"),
         lty=1)
  plot(data$DateTime, data$Global_reactive_power, type="l", xlab="", ylab="Global Rective Power (kilowatts)")
})
#to reset your graphics device
dev.off()

