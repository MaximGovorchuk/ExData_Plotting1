source('common.R')

startPlotPng('plot4.png')

# 2 x 2 graphs
par(mfrow=c(2,2))

data <- getData()

#1
with(data, {
    plot(DateTime, Global_active_power, type='l', xlab='', ylab='Global Active Power')
})

#2
with(data, {
    plot(DateTime, Voltage, xlab='datetime', type='l')
})

#3
with(data, {
    plot(DateTime, Sub_metering_1, type='l', xlab='', ylab="Energy sub metering")
    lines(DateTime, Sub_metering_2, type='l', col='red')
    lines(DateTime, Sub_metering_3, type='l', col='blue')
})

legend('topright', legend=c('Sub_metering_1', 'Sub_metering_2', 'Sub_metering_3'), lwd='1', col=c('black', 'red', 'blue'))

#4
with(data, {
    plot(DateTime, Global_reactive_power, xlab='datetime', type='l')
})

dev.off()