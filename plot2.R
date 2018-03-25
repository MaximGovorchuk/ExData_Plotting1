source('common.R')
    
startPlotPng('plot2.png')

data <- getData()

with(data, {
    plot(DateTime, Global_active_power, type='l', xlab='', ylab="Global Active Power (kilowatts)")
})

dev.off()