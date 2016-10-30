source("load_data.R") # Read in data

png("plot4.png", height=480, width=480)

par(mfrow=c(2,2))

## Upper left ####
plot(consumption$datetime, consumption$Global_active_power, 
     type = 'l',
     col = 1,
     xlab = "",
     ylab = "Global Active Power (kilowatts)")



## Lower left ####

plot(consumption$datetime, consumption$Voltage, 
     type = 'l',
     col = 1,
     xlab = "datetime",
     ylab = "Voltage")


## Upper right ####
sub_meters <- 1:3 # Sub_metering_i
cols <- c(1,2,4) # black, red, blue plot colors

ylim <- c(0, max(consumption[, paste0("Sub_metering_", sub_meters)]))

for (i in sub_meters) {
  plot(consumption$datetime, consumption[[paste0("Sub_metering_", i)]], 
       type = 'l',
       col = cols[i],
       ylim = ylim,
       xlab = "",
       ylab = "Energy sub metering")
  
  par(new=T)  
}
legend(x="topright", legend=paste0("Sub_metering_", sub_meters), lty=1)


## Lower right ####

plot(consumption$datetime, consumption$Global_reactive_power, 
     type = 'l',
     col = 1,
     xlab = "datetime",
     ylab = "Global_reaction_power")

#####
dev.off()