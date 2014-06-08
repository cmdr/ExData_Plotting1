## Exploratory Data Analysis, Project 1, Plot 2

full_data <- read.csv2("household_power_consumption.txt", sep = ";", na.strings = "?", 
                       colClasses = "character")
data <- full_data[with(full_data, Date == "1/2/2007" | Date == "2/2/2007"), ]
x <- data[, 1]
# x <- weekdays(as.Date(x))
x <- c(1:length(x))
y = as.numeric(data[, 3])

## Open png device; create 'plot2.png' in my working directory
png("plot2.png", width = 480, height = 480, units = "px")
plot2 = plot(x, y, xlab = "", ylab = "Global Active Power (kilowatts)", xaxt = "n", "l")
# set the x axis
axis(1, at = c(1, 1440, 2880), labels = c("Thu", "Fri", "Sat"))
dev.off() ## Close the png file device
