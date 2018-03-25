source('common.R')

startPlotPng('plot3.png')

data <- getData()
    
with(data, {
    plot(DateTime, Sub_metering_1, type='l', xlab='', ylab="Energy sub metering")
    lines(DateTime, Sub_metering_2, type='l', col='red')
    lines(DateTime, Sub_metering_3, type='l', col='blue')
})

legend('topright', legend=c('Sub_metering_1', 'Sub_metering_2', 'Sub_metering_3'), lwd='1', col=c('black', 'red', 'blue'))

dev.off()