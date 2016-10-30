source("load_data.R") # Read in data

png("plot3.png", height=480, width=480)

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

dev.off()