PreproccessData <- function(){
        library("data.table")
        library("lubridate")
        library("dplyr")
        data <- fread("household_power_consumption.txt")
        data$Date <- dmy(data$Date)
        data <- filter(data,Date >= "2007-02-01" , Date <= "2007-02-02")
        data <- mutate_each(data,funs = as.numeric,Global_active_power:Sub_metering_3)
        dateTime <- as.POSIXct( paste(data$Date,data$Time,sep = " "),format = "%Y-%m-%d %H:%M:%S")
        data <- cbind(data,dateTime)
        return(data)
}

