##Read the file with the data
hhpc$file <- "hhpc_feb2007.txt"
hhpc <- read.csv(file,header = TRUE, sep=";", na.strings = "?")
hhpc$DateTime <- strptime(paste(hhpc$Date, hhpc$Time), "%d/%m/%Y %H:%M:%S")

## Fourth plot
## Open PNG device, create 'plot1.png' file
png(filename = "plot4.png", width = 480, height = 480)

# Set global vars
par(mfrow = c(2, 2))

# plot 1 (Up-Left)
plot(hhpc$DateTime, hhpc$Global_active_power, type = "l", ylab = "Global Active Power", xlab = "")

# plot 2 (Up-Right)
plot(hhpc$DateTime, hhpc$Voltage, type = "l", ylab = "Voltage", xlab = "datetime")

# plot 3 (Down-Left)
plot(hhpc$DateTime, hhpc$Sub_metering_1, type = "l", ylab = "Energy sub metering", xlab = "", col = "black")
points(hhpc$DateTime, hhpc$Sub_metering_2, type = "l", xlab = "", ylab = "Sub_metering_2", col = "red")
points(hhpc$DateTime, hhpc$Sub_metering_3, type = "l", xlab = "", ylab = "Sub_metering_3", col = "blue")
legend("topright", lty = 1, col = c("black", "red", "blue"), legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), bty = "n", )

# plot 4 (Down-Right)
plot(hhpc$DateTime, hhpc$Global_reactive_power, type = "l", xlab = "datetime", ylab = "Global_reactive_power", ylim = c(0, 0.5))

dev.off() ## Close the PNG file device
