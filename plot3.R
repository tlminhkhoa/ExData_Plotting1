source("PreprocessData.R")
data <- PreproccessData()

png(filename = "plot3.png",width = 480,height = 480)
plot(data$dateTime,data$Sub_metering_1,type = "l",ylab = "Energy sub metering",xlab = "")
lines(data$dateTime,data$Sub_metering_2,col = "red")
lines(data$dateTime,data$Sub_metering_3, col = "blue")
legend(x = "topright",legend = c("Sub_metering_1","Sub_metering_2","Sub_metering_3"),col = c("black","red","blue"),lty=1)
dev.off()
