source("load_data.R") # Read in data

png("plot2.png", height=480, width=480)

plot(consumption$datetime, consumption$Global_active_power, 
     type = 'l',
     col = 1,
     xlab = "",
     ylab = "Global Active Power (kilowatts)")

dev.off()