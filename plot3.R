## Exploratory Data Analysis, Project 1, Plot 3
# read the data
full_data <- read.csv2("household_power_consumption.txt", sep = ";", na.strings = "?", 
                       colClasses = "character")
data <- full_data[with(full_data, Date == "1/2/2007" | Date == "2/2/2007"), ]
x <- data[, 1]
x <- c(1:length(x))
# extract the relevant columns
y1 = as.numeric(data[, 7])
y2 = as.numeric(data[, 8])
y3 = as.numeric(data[, 9])

## Open png device; create 'plot3.png' in my working directory
png("plot3.png", width = 480, height = 480, units = "px")
plot3 = plot(x, y1, xlab = "", ylab = "Energy sub metering", xaxt = "n", "l")
lines(x, y2, col = "red")
lines(x, y3, col = "blue")
# set the x axis
axis(1, at = c(1, 1440, 2880), labels = c("Thu", "Fri", "Sat"))
# set the legend
legend("topright", c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lty=c(1,1,1), lwd=c(2.5,2.5,2.5),
       col=c("black", "red", "blue") )
print(plot3) # print plot on screen for a check-up
dev.off() # Close the png file device
