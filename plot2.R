#require
require("dplyr")

# get data

file <- "./data/household_power_consumption.txt"
df <- read.table(file, header = TRUE, sep = ";", dec=".")

# subset data
data <- filter(df,Date == "1/2/2007" | Date == "2/2/2007")

#plot2

datetime <- strptime(paste(data$Date,data$Time,sep=" "),"%d/%m/%Y %H:%M:%S")
Global_active_power <- as.numeric(data$Global_active_power)
png("plot2.png", width = 480, height = 480)
plot(datetime,Global_active_power, type = "l", xlab = "", ylab = "Global Active Poewr (kilowatts)")
dev.off()