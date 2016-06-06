#require
require("dplyr")

# get data

file <- "./data/household_power_consumption.txt"
df <- read.table(file, header = TRUE, sep = ";", dec=".")

# subset data
data <- filter(df,Date == "1/2/2007" | Date == "2/2/2007")

#plot3

Sub_metering_1 <- as.numeric(data$Sub_metering_1)
Sub_metering_2 <- as.numeric(data$Sub_metering_2)
Sub_metering_3 <- as.numeric(data$Sub_metering_3)
datetime <- strptime(paste(data$Date,data$Time,sep=" "),"%d/%m/%Y %H:%M:%S")

png("plot3.png", width = 480, height = 480)
plot(datetime,Sub_metering_1, type = "l", xlab = "", ylab = "Energy sub metering", col = "black")
lines(datetime,Sub_metering_2, type = "l", col = "red")
lines(datetime,Sub_metering_3, type = "l", col = "blue")
legend("topright",c("Sub Metering 1", "Sub Metering 2", "Sub Metering 3"),lty = 1, lwd = 2, col = c("black","red","blue"))
dev.off()