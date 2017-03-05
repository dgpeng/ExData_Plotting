#make sure of the working directory
	getwd ()
#extra data.zip to the working directory; and load data to a short name
	HPC <- file ("household_power_consumption.txt")
#read the data from just those two dates (from 2007-02-01 to 2007-02-02)
	twodates <- read.table (text = grep ("^[1,2]/2/2007", readLines(HPC), value = TRUE), 
	col.names = c("Date", "Time", "Global_active_power", "Global_reactive_power", "Voltage", "Global_intensity", "Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), 
	sep = ";", header = TRUE)
	
## as an alternative way to extract the data from those two days
	#twodates <- as.Date(c("02-01-2007", "02-02-2007"), "%m-%d-%Y")
