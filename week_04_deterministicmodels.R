# Installing a package
install.packages("here")
# Reading a package
require("here")
here("data", "hab.sta(2).csv")
here("data", "hab.sta (2).csv")
# Loading the data into a data frame
dat_habitat <- read.csv(here("data", "hab.sta (2).csv"))
dat_habitat
# Histogram for elevation and saving it s a png
png(filename = "histogram_elevation.png")
hist(dat_habitat$elev, main = "elevation histogram", xlab = "elevation (m)")
dev.off()
# Histogram for slope and saving it as a png
png(filename = "histogram_slope.png")
hist(dat_habitat$slope, main = "slope histogram", xlab = "percent slope (%)")
dev.off()
# Histogram for aspect and saving is as a png
png(filename = "histogram_aspect2.png")
hist(dat_habitat$aspect, main = "aspect", xlab = "aspect (degrees)")
dev.off()

# Scatter plot for elevation vs basal area and the "best fit line"
png(filename = "plot_elevation_basalarea.png")
plot(x= dat_habitat$elev, y = dat_habitat$ba.tot, xlab = "elevation (m)", ylab = "basal area", main = "elevation vs basal area")
points(x = data_center_x, y = data_center_y, col = "red")
abline(lm(ba.tot ~ elev, data = dat_habitat), col = "blue")
dev.off()


# Scatter plot for slope vs basal area and the "best fit line"
png(filename = "plot_slope_basalarea.png")
plot(x= dat_habitat$slope, y = dat_habitat$ba.tot, xlab = "percent slope (%)", ylab = "basal area", main = "slope vs basal area")
points(x = data_center_x, y = data_center_y, col = "red")
abline(lm(ba.tot ~ slope, data = dat_habitat), col = "blue")
dev.off()


# Scatter plot for aspect vs basal area and the "best fit line" 
png(filename = "plot_aspect2_basalarea.png")
plot(x= dat_habitat$aspect, y = dat_habitat$ba.tot, xlab = "aspect (degrees)", ylab = "basal area", main = "aspect vs basal area")
points(x = data_center_x, y = data_center_y, col = "red")
abline(lm(ba.tot ~ aspect, data = dat_habitat), col = "blue")
dev.off()

# What you can use if you want to eye ball the best fit line
line_point_slope = function(x, x1, y1, slope)
{
  get_y_intercept = 
    function(x1, y1, slope) 
      return(-(x1 * slope) + y1)
  
  linear = 
    function(x, yint, slope) 
      return(yint + x * slope)
  
  return(linear(x, get_y_intercept(x1, y1, slope), slope))
}
curve(line_point_slope(x, x1 = 170, y1 = 30, slope = 0.2), add = TRUE)
