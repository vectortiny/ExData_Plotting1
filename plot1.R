# CONST
zip_url  <- "https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip"
file_zip <- "household_power_consumption.zip"

# generate command to unzip and extract content
cmd <- paste(
  "curl -o"
  , file_zip
  , zip_url
  , "&& unzip -p", file_zip
  , "| grep -E '^(Date|1/2/2007|2/2/2007);'"
  , sep = " "
)

# load the data.table package
library(data.table)

# read and subset the CSV file
hp_consum <- fread(cmd = cmd)

# plot to PNG
png("plot1.png", width = 480, height = 480, units = "px")
hist(
  hp_consum$Global_active_power
  , col = "red"
  , xlab = "Global Active Power (kilowatts)"
  , main = "Global Active Power"
)
dev.off()