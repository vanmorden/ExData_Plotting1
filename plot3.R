##Read the file with the data
hhpc$file <- "hhpc_feb2007.txt"
hhpc <- read.csv(file,header = TRUE, sep=";", na.strings = "?")
hhpc$DateTime <- strptime(paste(hhpc$Date, hhpc$Time), "%d/%m/%Y %H:%M:%S")

## Third plot
## Open PNG device, create 'plot1.png' file
png(filename = "plot3.png", width = 480, height = 480)
plot(hhpc$DateTime, hhpc$Sub_metering_1, type = "l", xlab = "", ylab = "Energy sub metering")
points(hhpc$DateTime, hhpc$Sub_metering_2, type = "l", xlab = "", ylab = "Energy sub metering", col = "red")
points(hhpc$DateTime, hhpc$Sub_metering_3, type = "l", xlab = "", ylab = "Energy sub metering", col = "blue")
legend("topright", lty = 1, col = c("black", "red", "blue"), legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))
dev.off() ## Close the PNG file device
