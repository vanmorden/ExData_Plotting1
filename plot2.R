##Read the file with the data
file <- "hhpc_feb2007.txt"
hhpc <- read.csv(file,header = TRUE, sep=";", na.strings = "?")
hhpc$DateTime <- strptime(paste(hhpc$Date, hhpc$Time), "%d/%m/%Y %H:%M:%S")

## Second plot
## Open PNG device, create 'plot1.png' file
png(filename = "plot2.png", width = 480, height = 480)
plot(hhpc$DateTime, hhpc$Global_active_power, type = "l", xlab = "", ylab = "Global Active Power (kilowatts)")
dev.off() ## Close the PNG file device
