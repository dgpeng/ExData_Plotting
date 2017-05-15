
#Plot2.R
#extract data.zip to the working directory; and load data to a short name
#HPC <- file ("household_power_consumption.txt")
#read the data from just those two dates (from 2007-02-01 to 2007-02-02)
data <- read.csv("household_power_consumption.txt", na.string="?", sep=";")
data <- data[(data$Date=="1/2/2007" | data$Date=="2/2/2007"),]

#Converting date
	data$DateTime <- strptime(paste(data$Date, data$Time, sep=" "), format="%d/%m/%Y %H:%M:%S")
	#data$Datetime <- as.POSIXct(datetime, format = "%Y-%m-%d %H:%M:%S")
#Generating Plot 2
	png("plot2.png", width=480, height=480)
  plot(data$DateTime, data$Global_active_power, type="l", xlab="", ylab="Global Active Power (kilowatts)")
	
#to reset your graphics device
dev.off()
	



