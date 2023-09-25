# plot to PNG
png("plot4.png", width = 480, height = 480, units = "px")

par(mfrow = c(2, 2))
      
# plot 1,1
plot(
  v_Datetime, hp_consum$Global_active_power
  , type = "l"
  , xlab = "", ylab = "Global Active Power"
  , axes = FALSE
)
axis(1, v_Datetime_tick, format(v_Datetime_tick, "%a"))
axis(2)
box()

# plot 1,2
plot(
  v_Datetime, hp_consum$Voltage
  , type = "l"
  , xlab = "datetime", ylab = "Voltage"
  , axes = FALSE
)
axis(1, v_Datetime_tick, format(v_Datetime_tick, "%a"))
axis(2)
box()


# plot 2,1
plot(
  v_Datetime, hp_consum$Sub_metering_1
  , type = "l"
  , xlab = "", ylab = "Energy sub metering"
  , axes = FALSE
)
lines(v_Datetime, hp_consum$Sub_metering_2, type = "l", col = "red")
lines(v_Datetime, hp_consum$Sub_metering_3, type = "l", col = "blue")
axis(1, v_Datetime_tick, format(v_Datetime_tick, "%a"))
axis(2)
legend(
  "topright"
  , lty = 1, col = c("black", "red", "blue")
  , bty= "n"
  , legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3")
)
box()

# plot 2,2
plot(
  v_Datetime, hp_consum$Global_reactive_power
  , type = "l"
  , xlab = "datetime", ylab = "Global_reactive_power"
  , axes = FALSE
)
axis(1, v_Datetime_tick, format(v_Datetime_tick, "%a"))
axis(2)
box()

dev.off()
