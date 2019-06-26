data <- read.table('C:/Victoria/Python files/Johns Hopkins Data Science Specialization/Exploratory Data Course Project 1/household_power_consumption.txt', sep = ';')
shortdata <- data[(data$V1 == '1/2/2007' | data$V1 == '2/2/2007'),] 
hist(as.numeric(as.character(shortdata$V3)), main = 'Global Active Power', xlab = 'Global Active Power (kilowatts)', col = 'red')