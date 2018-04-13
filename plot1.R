# Setting the working directory
setwd("~/R/ExploratoryDataAnalysis/exdata_data_household_power_consumption")

#The step below is to read the data from the UCI Web site

plotdata <- read.csv("household_power_consumption.txt", sep=";")


#The following step is to read the  subset of data for the period of 01/02/2007 - 02/02/2007

subdata <- subset(plotdata, Date %in% c("2/1/2007","2/2/2007"))


# To plot a histogram for the monthly power consumption in the given range and set the x & y axis labels and the plot heading title.

hist(as.numeric(as.character(subdata$Global_active_power)), breaks=12, xlab="Global Active Power(kilowatts)",
     ylab="Frequency", main="Global Active Power", col="red")

# save the plot as a png file with specific height & width
png("plot1.png", width=480, height=480)

#Turn off the device settings for png
dev.off()