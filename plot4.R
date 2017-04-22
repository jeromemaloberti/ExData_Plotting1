source("load_data.R")
png(filename = "plot4.png", width = 480, height = 480)
par(mfrow = c(2, 2))
plot(dt$DateTime, dt$Global_active_power, type = "l", xlab = NA, ylab = "Global Active Power (kilowatts)")

plot(dt$DateTime, dt$Voltage, type = "l", xlab = "datetime", ylab = "Voltage")

plot(dt$DateTime, dt$Sub_metering_1, type = "l", xlab = NA, ylab = "Energy sub metering")
lines(dt$DateTime, dt$Sub_metering_2, col = "red")
lines(dt$DateTime, dt$Sub_metering_3, col = "blue")
legend("topright", bty = "n", legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), col = c("black", "red", "blue"), lty = 1)

plot(dt$DateTime, dt$Global_reactive_power, type = "l", xlab = "datetime", ylab = "Global_reactive_power")
dev.off()