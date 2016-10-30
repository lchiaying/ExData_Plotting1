setwd("D:/Coursera/DataScienceSpecialization/Course4/Project1/")

source("load_data.R") # Read in data

png("plot1.png", height=480, width=480)

hist(consumption$Global_active_power, 
     col = 2,
     xlab = "Global Active Power (kilowatts)",
     main = "Global Active Power")

dev.off()