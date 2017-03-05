#Plot1.R
	png("plot1.png", width=480, height=480)
	hist(twodates$Global_active_power, col = "red", main = paste("Global Active Power"), 
	xlab = "Global Active Power (kilowatts)")
#to reset your graphics device
	dev.off()
