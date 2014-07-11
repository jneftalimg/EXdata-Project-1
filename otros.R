
You may find it useful to convert the Date and Time variables to Date/Time classes in R using the strptime() and as.Date() functions.
pollution <- read.csv("data/avgpm25.csv", colClasses = c("numeric", "character", 
                                                         "factor", "numeric", "numeric"))


hist(pollution$pm25, col = "green", breaks = 100)
rug(pollution$pm25)
abline(h = 12)
abline(v = median(pollution$pm25), col = "magenta", lwd = 4)

par(mfrow = c(1, 2))
with(airquality, {
  plot(Wind, Ozone, main = "Ozone and Wind")
  plot(Solar.R, Ozone, main = "Ozone and Solar Radiation")
  mtext("Ozone and Weather in New York City", outer = TRUE)
})

with(airquality, plot(Wind, Ozone, main = "Ozone and Wind in New York City", 
                      type = "n"))
with(subset(airquality, Month == 5), points(Wind, Ozone, col = "blue"))
with(subset(airquality, Month != 5), points(Wind, Ozone, col = "red"))
legend("topright", pch = 1, col = c("blue", "red"), legend = c("May", "Other Months"))

with(faithful, plot(eruptions, waiting)) ## Create plot on screen device
title(main = "Old Faithful Geyser data") ## Add a main title
png(filename = "plot1.png", width = 480, height = 480,
    units = "px", pointsize = 12, bg = "white", res = NA,
    restoreConsole = TRUE)
dev.copy(png, file = "geyserplot.png") 
dev.off()


pdf(file = "myplot.pdf") 