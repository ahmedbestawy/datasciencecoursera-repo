hist(data_2007$Global_active_power,
     xlab = "Global active power (In Kilowatts)",
     col = "red", main = "Global Active Power")

dev.copy(png, file = "plot1.png")
