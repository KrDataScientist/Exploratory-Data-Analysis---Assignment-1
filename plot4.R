<<<<<<< HEAD
# Setting the working directory
setwd("~/R/ExploratoryDataAnalysis/exdata_data_household_power_consumption")

# Read the data from the UCI Web site
loaddata <- "household_power_consumption.txt"

# Read the subset of data for the period of 02/01/2007 - 02/02/2007 for power consumption
subdata <- read.table(loaddata, header=TRUE, sep=";", stringsAsFactors=FALSE, dec=".")

subSetofData <- subdata[subdata$Date %in% c("1/2/2007","2/2/2007") ,]


# Convert the Date and Time vars to type Date and Time
datentime <- strptime(paste(subSetofData$Date, subSetofData$Time, sep=" "), "%d/%m/%Y %H:%M:%S") 

#cast the Global active power as numeric
globalActivePower <- as.numeric(subSetofData$Global_active_power)

#cast the Global re-active power as numeric
globalReactivePower <- as.numeric(subSetofData$Global_reactive_power)

#Include voltage and the submeter readings as 4 graphs are to be plotted
voltage <- as.numeric(subSetofData$Voltage)

subMeter1 <- as.numeric(subSetofData$Sub_metering_1)
subMeter2 <- as.numeric(subSetofData$Sub_metering_2)
subMeter3 <- as.numeric(subSetofData$Sub_metering_3)

# Plot the graph as png
png("plot4.png", width=480, height=480)


#create a matrix of 2 rows and 2 columns to plot 4 graphs
par(mfrow = c(2, 2)) 

#plot1
plot(datentime, globalActivePower, type="l", xlab="", ylab="Global Active Power", cex=0.2)


#plot2
plot(datetime, voltage, type="l", xlab="datetime", ylab="Voltage")


#plot 3
plot(datentime, subMeter1, type="l", ylab="Energy Sub-metering", xlab="")

#labeling, color and legend
lines(datentime, subMeter2, type="l", col="red")
lines(datentime, subMeter3, type="l", col="blue")
legend("topright", c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lty=, lwd=2.5, col=c("black", "red", "blue"), bty="o")

#plot 4
plot(datentime, globalReactivePower, type="l", xlab="datetime", ylab="Global_reactive_power")

#turn current device off from png
=======
# Setting the working directory
setwd("~/R/ExploratoryDataAnalysis/exdata_data_household_power_consumption")

# Read the data from the UCI Web site
loaddata <- "household_power_consumption.txt"

# Read the subset of data for the period of 02/01/2007 - 02/02/2007 for power consumption
subdata <- read.table(loaddata, header=TRUE, sep=";", stringsAsFactors=FALSE, dec=".")

subSetofData <- subdata[subdata$Date %in% c("1/2/2007","2/2/2007") ,]


# Convert the Date and Time vars to type Date and Time
datentime <- strptime(paste(subSetofData$Date, subSetofData$Time, sep=" "), "%d/%m/%Y %H:%M:%S") 

#cast the Global active power as numeric
globalActivePower <- as.numeric(subSetofData$Global_active_power)

#cast the Global re-active power as numeric
globalReactivePower <- as.numeric(subSetofData$Global_reactive_power)

#Include voltage and the submeter readings as 4 graphs are to be plotted
voltage <- as.numeric(subSetofData$Voltage)

subMeter1 <- as.numeric(subSetofData$Sub_metering_1)
subMeter2 <- as.numeric(subSetofData$Sub_metering_2)
subMeter3 <- as.numeric(subSetofData$Sub_metering_3)

# Plot the graph as png
png("plot4.png", width=480, height=480)


#create a matrix of 2 rows and 2 columns to plot 4 graphs
par(mfrow = c(2, 2)) 

#plot1
plot(datentime, globalActivePower, type="l", xlab="", ylab="Global Active Power", cex=0.2)


#plot2
plot(datetime, voltage, type="l", xlab="datetime", ylab="Voltage")


#plot 3
plot(datentime, subMeter1, type="l", ylab="Energy Sub-metering", xlab="")

#labeling, color and legend
lines(datentime, subMeter2, type="l", col="red")
lines(datentime, subMeter3, type="l", col="blue")
legend("topright", c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lty=, lwd=2.5, col=c("black", "red", "blue"), bty="o")

#plot 4
plot(datentime, globalReactivePower, type="l", xlab="datetime", ylab="Global_reactive_power")

#turn current device off from png
>>>>>>> d4db19e91cc59ae7d330d65d68c05226b7262dea
dev.off()