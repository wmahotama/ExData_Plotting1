#require
require("dplyr")

# get data

file <- "./data/household_power_consumption.txt"
df <- read.table(file, header = TRUE, sep = ";", dec=".")

# subset data
data <- filter(df,Date == "1/2/2007" | Date == "2/2/2007")

#plot1

Global_active_power <- as.numeric(data$Global_active_power)
png("plot1.png", width = 480, height = 480)
hist(Global_active_power, xlab = "Global Active Power (kilowatt)", main = "Global Active Power", col = "red")
dev.off()