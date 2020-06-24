source("PreprocessData.R")
data <- PreproccessData()


png(filename = "plot4.png",width = 480,height = 480)

par(mfrow=c(2, 2))

plot(data$dateTime,data$Global_active_power,type = "l",ylab = "Gobal Active Power (kilowatts)",xlab = "" )

plot(data$dateTime,data$Voltage,type ="l",xlab = "datetime",ylab = "Voltage")

plot(data$dateTime,data$Sub_metering_1,type = "l",ylab = "Energy sub metering",xlab = "")
lines(data$dateTime,data$Sub_metering_2,col = "red")
lines(data$dateTime,data$Sub_metering_3, col = "blue")
legend(x = "topright",legend = c("Sub_metering_1","Sub_metering_2","Sub_metering_3"),col = c("black","red","blue"),lty=1)

plot(data$dateTime,data$Global_reactive_power,xlab = "datetime",ylab = "Global_reactive_power",type = "l")
dev.off()
