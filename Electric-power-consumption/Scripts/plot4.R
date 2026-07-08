par(mfrow = c(2,2))

#1---- 
plot(data_2007$Date.time,
     data_2007$Global_active_power,
     type = "l",
     xlab = "",
     ylab = "Global active power (In Kilowatts)")

#2----
plot(data_2007$Date.time,
     data_2007$Voltage,
     type = "l",
     xlab = "datetime",
     ylab = "Voltage")

#3----
with(data_2007, plot(Date.time, Sub_metering_1,
                     xlab = "",
                     ylab = "Energy sub metering",
                     type = "l"))
lines(data_2007$Date.time, data_2007$Sub_metering_2, col = "red")
lines(data_2007$Date.time, data_2007$Sub_metering_3, col = "blue")

legend("topright", legend = c("Sub_metering_1", "Sub_metering_2","Sub_metering_3"),
       col = c("black", "red", "blue"), lty = 1, cex = 0.8, bty = "n")


#4----
plot(data_2007$Date.time,
     data_2007$Voltage,
     type = "l",
     xlab = "datetime",
     ylab = "Global reactive power")

