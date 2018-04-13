# Setting the working directory
setwd("~/R/ExploratoryDataAnalysis/exdata_data_household_power_consumption")

# Read the data from the UCI Web site
loaddata <- "household_power_consumption.txt"

# Read the subset of data for the period of 02/01/2007 - 02/02/2007 for power consumption
subdata <- read.table(loaddata, header=TRUE, sep=";", stringsAsFactors=FALSE, dec=".")

subSetofData <- subdata[subdata$Date %in% c("1/2/2007","2/2/2007") ,]


# Convert the Date and Time vars to type Date and Time
datetime <- strptime(paste(subSetofData$Date, subSetofData$Time, sep=" "), "%d/%m/%Y %H:%M:%S") 

#cast as numeric
globalActivePower <- as.numeric(subSetofData$Global_active_power)


#get each sub metering value

subMeter1 <- as.numeric(subSetofData$Sub_metering_1)
subMeter2 <- as.numeric(subSetofData$Sub_metering_2)
subMeter3 <- as.numeric(subSetofData$Sub_metering_3)

# Plot the graph as png

png("plot3.png", width=480, height=480)

plot(datetime, subMeter1, type="l", ylab="Energy Submetering", xlab="")

#labeling, color and legend
lines(datetime, subMeter2, type="l", col="red")
lines(datetime, subMeter3, type="l", col="blue")
legend("topright", c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lty=1, lwd=2.5, col=c("black", "red", "blue"))

#turn current device off from png
dev.off()