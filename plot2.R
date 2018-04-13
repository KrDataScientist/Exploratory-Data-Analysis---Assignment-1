<<<<<<< HEAD
# Setting the working directory
setwd("~/R/ExploratoryDataAnalysis/exdata_data_household_power_consumption")

#The step below is to read the data from the UCI Web site
plot2dataFile <- read.csv("household_power_consumption.txt", sep=";")

#The following step is to read the subset of data for the period of 02/01/2007 - 02/02/2007 for power consumption
thedata <- read.table(plot2dataFile, header=TRUE, sep=";", stringsAsFactors=FALSE, dec=".")
subsetofData <- thedata[thedata$Date %in% c("1/2/2007","2/2/2007") ,]

# Convert the Date and Time vars to type Date and Time
datentime <- strptime(paste(subsetofData$Date, subsetofData$Time, sep=" "), "%d/%m/%Y %H:%M:%S") 

# cast it as numeric to be able to plot.
globalActivePower <- as.numeric(subsetofData$Global_active_power)

# Plot the graph using base plot function
plot(datetime, globalActivePower, type="l", xlab="", ylab="Global Active Power (kilowatts)")

# Give title to the plot 
title(main="Global Active Power Vs Time")

#save plot as a png file with specific height & width
png("plot2.png", width=480, height=480)

#turn off the device set to png
dev.off()
=======
# Setting the working directory
setwd("~/R/ExploratoryDataAnalysis/exdata_data_household_power_consumption")

#The step below is to read the data from the UCI Web site
plot2dataFile <- read.csv("household_power_consumption.txt", sep=";")

#The following step is to read the subset of data for the period of 02/01/2007 - 02/02/2007 for power consumption
thedata <- read.table(plot2dataFile, header=TRUE, sep=";", stringsAsFactors=FALSE, dec=".")
subsetofData <- thedata[thedata$Date %in% c("1/2/2007","2/2/2007") ,]

# Convert the Date and Time vars to type Date and Time
datentime <- strptime(paste(subsetofData$Date, subsetofData$Time, sep=" "), "%d/%m/%Y %H:%M:%S") 

# cast it as numeric to be able to plot.
globalActivePower <- as.numeric(subsetofData$Global_active_power)

# Plot the graph using base plot function
plot(datetime, globalActivePower, type="l", xlab="", ylab="Global Active Power (kilowatts)")

# Give title to the plot 
title(main="Global Active Power Vs Time")

#save plot as a png file with specific height & width
png("plot2.png", width=480, height=480)

#turn off the device set to png
dev.off()
>>>>>>> d4db19e91cc59ae7d330d65d68c05226b7262dea
