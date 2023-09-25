# convert columns Date, Time to datetime
v_Datetime <- as.POSIXct(
  strptime(
    paste(hp_consum$Date, hp_consum$Time, sep = ' ')
    , "%e/%m/%Y %H:%M:%S"
  )
)
# define ticks
v_Datetime_tick <- c(
  as.POSIXct(
    strptime(
      paste(hp_consum$Date, '00:00:00', sep = ' ')
      , "%e/%m/%Y %H:%M:%S"
    )
  )
  , as.POSIXct(
    strptime(
      '3/2/2007 00:00:00'
      , "%e/%m/%Y %H:%M:%S"
    )
  )
)

# plot to PNG
png("plot2.png", width = 480, height = 480, units = "px")
plot(
  v_Datetime, hp_consum$Global_active_power
  , type = "l"
  , xlab = "", ylab = "Global Active Power (kilowatts)"
  , axes = FALSE
)
axis(1, v_Datetime_tick, format(v_Datetime_tick, "%a"))
axis(2)
box()
dev.off()
