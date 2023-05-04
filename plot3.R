plot(Finaldt$Sub_metering_1~Finaldt$Datetime, type = "l", ylab = "Global Active Power (kilowatts)", xlab = "")
lines(Finaldt$Sub_metering_2~Finaldt$Datetime, col = "Red")
lines(Finaldt$Sub_metering_3~Finaldt$Datetime, col = "Blue")
legend("topright", col = c("black", "red", "blue"), lty = 1, lwd = 2, legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))