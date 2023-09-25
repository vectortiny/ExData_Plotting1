# plot to PNG
png("plot3.png", width = 480, height = 480, units = "px")

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
  , legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3")
)
box()

dev.off()