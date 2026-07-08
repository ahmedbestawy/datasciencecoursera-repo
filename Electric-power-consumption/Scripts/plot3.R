with(data_2007, plot(Date.time, Sub_metering_1,
                     xlab = "",
                     ylab = "Energy sub metering",
                     type = "l"))
lines(data_2007$Date.time, data_2007$Sub_metering_2, col = "red")
lines(data_2007$Date.time, data_2007$Sub_metering_3, col = "blue")

legend("topright", legend = c("Sub_metering_1", "Sub_metering_2","Sub_metering_3"),
                   col = c("black", "red", "blue"), lty = 1, cex = 0.8, bty = 3)
