## Helper code to read in data and subset to desired date range

library(data.table)

cat("Reading data... ")
consumption <- read.table("household_power_consumption.txt", 
                          sep=";", 
                          header=T,
                          na.strings=c("", "?"))

cat("Converting date time... ")
consumption$Date <- as.Date(as.character(consumption$Date), format="%d/%m/%Y")

consumption <- consumption[consumption$Date >= as.Date("2007-02-01", format="%Y-%m-%d") &
                             consumption$Date <= as.Date("2007-02-02", format="%Y-%m-%d"), ]

consumption$datetime <- strptime(mapply(function(d, t) {paste(d,t)}, consumption$Date, consumption$Time), 
                                 format="%Y-%m-%d %H:%M:%S")

gc()
cat("Done!\n")

