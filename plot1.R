##Read the file with the data
file <- "hhpc_feb2007.txt"
hhpc <- read.csv(file,header = TRUE, sep=";", na.strings = "?")
hhpc$DateTime <- strptime(paste(hhpc$Date, hhpc$Time), "%d/%m/%Y %H:%M:%S")

## First plot
## Open PNG device, create 'plot1.png' file
png(filename = "plot1.png", width = 480, height = 480)
hist(hhpc$Global_active_power, main = "Global Active Power", ylab = "Frequency", xlab = "Global Active Power (kilowatts)", col = "red", breaks = 12, ylim = c(0, 1200), xlim = c(0, 6), xaxp = c(0, 6, 3))
dev.off() ## Close the PNG file device
