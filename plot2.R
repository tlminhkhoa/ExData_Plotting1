source("PreprocessData.R")
data <- PreproccessData()

png(filename = "plot2.png",width = 480,height = 480)
plot(data$dateTime,data$Global_active_power,type = "l",ylab = "Gobal Active Power (kilowatts)",xlab = "" )
dev.off()
