source("load_data.R")
png(filename = "plot1.png", width = 480, height = 480)
hist(dt$Global_active_power, main = "Global Active Power", xlab = "Global Active Power (kilowatts)", col = "red")
dev.off()