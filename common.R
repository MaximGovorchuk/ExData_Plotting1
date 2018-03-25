loadData <- function(){    
    # Download and unpack zip if samsung data folder is absent

    data_set_file_name <- "household_power_consumption.txt"

    if (!file.exists(data_set_file_name)) {
        data_set_archieve_file_name <- "exdata-data-household_power_consumption.zip"

        if (!file.exists(data_set_archieve_file_name)) {
            download.file("https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip", data_set_archieve_file_name)
        }

        unzip(data_set_archieve_file_name)
    }

    # Parses and prepares data    
    epc <- read.table(data_set_file_name, header=T, sep=";", colClasses=c("character","character","double","double","double","double","double","double","numeric"), na.strings="?")
    epc$DateTime = as.POSIXlt(paste(epc$Date, epc$Time), format="%d/%m/%Y %H:%M:%S")

    # Remove initial columns
    epc$Date = NULL
    epc$Time = NULL

    subset(epc, DateTime$year==107 & DateTime$mon==1 & (DateTime$mday==1 | DateTime$mday==2))
}

# Caches/reuses loaded data for plotting all graphs
getData <- function(){
    if(!exists('loadedData')) {
        loadedData <<- loadData()
    }
    
    loadedData
}

startPlotPng <- function(plotName) {
    png(plotName, width=480, height=480, bg='transparent')
}