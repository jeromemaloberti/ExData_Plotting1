source("load_data.R")
png(filename = "plot2.png", width = 480, height = 480)
plot(dt$DateTime, dt$Global_active_power, type = "l", xlab = NA, ylab = "Global Active Power (kilowatts)")
dev.off()