source("PreprocessData.R")
data <- PreproccessData()

png(filename = "plot1.png",width = 480,height = 480)
hist(data$Global_active_power,xlab = "Gobal Active Power (kilowatts)", col = "red" ,main = "Gobal Active Power" )
dev.off()