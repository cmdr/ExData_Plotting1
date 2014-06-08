## Exploratory Data Analysis, Project 1, Plot 1

full_data <- read.csv2("household_power_consumption.txt", sep = ";", na.strings = "?", 
                       colClasses = "character")
data <- full_data[with(full_data, Date == "1/2/2007" | Date == "2/2/2007"), ]
x = as.numeric(data[, 3])
hist1 = hist(x, col = "red", main = "Global Active Power", xlab = "Global Active Power (kilowatts)")

## Saving plot to file
png(file = "plot1.png", width = 480, height = 480, units = "px") ## Open png device; create 'plot1.png' in my working directory
with(faithful, hist1) ## Create plot and send to a file (no plot appears on screen)
title(main = "")
dev.off() ## Close the png file device
