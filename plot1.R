source('common.R')

startPlotPng('plot1.png')

data <- getData()

hist(data$Global_active_power, main="Global Active Power", xlab="Global Active Power (kilowatts)", col='red')

dev.off()