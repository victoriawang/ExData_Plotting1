data <- read.table('C:/Victoria/Python files/Johns Hopkins Data Science Specialization/Exploratory Data Course Project 1/household_power_consumption.txt', sep = ';')
shortdata <- data[(data$V1 == '1/2/2007' | data$V1 == '2/2/2007'),] 
library(lubridate)
result <- dmy(shortdata$V1)
newtimedata <- paste(result, shortdata$V2)
plottimedata <- ymd_hms(newtimedata)
plot(plottimedata, as.numeric(as.character(shortdata$V3)), xlab = '', ylab = "Global Active Power (kilowatts)", main = '', type = 'l')

                     