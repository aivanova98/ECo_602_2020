#THIS CODE IS FOR SEPTEMBER 10, 2020
require(palmerpenguins)
library("palmerpenguins")
penguins = data.frame(penguins)
class(penguins)
mean(penguin$body_mass_g)
head(penguins)
mean(penguins$body_mass_g, na.rn = TRUE)
#How to make a pair plot
pairs(penguins[,c("sex", "bill_length_mm", "species")])
#How to make a histogram
hist(penguins$bill_length_mm, main = "Bill Length")
#How to make a scatterplot
plot(x = penguins$bill_length_mm, y = penguins$bill_depth_mm)
#How to make a boxplot
boxplot(penguins$bill_depth_mm)
boxplot(bill_depth_mm ~ sex, data = penguins)
#How to put boxplots side by side for comparison
par(mfrow = c(1, 2))
boxplot(penguins$bill_depth_mm)
boxplot(bill_depth_mm ~ sex, data = penguins)
#How to make a coplot with the conditional variable coming after the vertical line
coplot(body_mass_g ~ bill_depth_mm | sex, data = penguins)
coplot(body_mass_g ~ bill_depth_mm | year, data = penguins)
coplot(body_mass_g ~ bill_depth_mm | species, data = penguins)

#THIS CODE IS FOR SEPTEMBER 8, 2020 (EXPERIMENTAL)
read.csv(https://michaelfrancenelson.github.io/eco_602_634_2020/data/bird.sta.csv)
read.csv("https://michaelfrancenelson.github.io/eco_602_634_2020/data/bird.sta.csv")
read.csv("https://michaelfrancenelson.github.io/eco_602_634_2020/data/hab.sta.csv")
dat_birds <- read.csv("https://michaelfrancenelson.github.io/eco_602_634_2020/data/bird.sta.csv")
dat_habitat <- read.csv("https://michaelfrancenelson.github.io/eco_602_634_2020/data/hab.sta.csv")
data.frame[dat_birds] <- read.csv("https://michaelfrancenelson.github.io/eco_602_634_2020/data/bird.sta.csv")
dat_birds <- read.csv("https://michaelfrancenelson.github.io/eco_602_634_2020/data/bird.sta.csv")
dat_habitat <- read.csv("https://michaelfrancenelson.github.io/eco_602_634_2020/data/hab.sta.csv")
# Create pair plots
pairs(dat_habitat[, c("elev", "slope", "aspect")])
# Create pair plots
pairs(dat_habitat[, c("elev", "slope", "aspect")])
pairs(dat_habitat[, c("elev", "ba.tot", "p.edge.1")])
head(dat_habitat)
#Create histogram using bird count data
head(dat_birds)
hist(WIWA)
hist("WIWA")
hist("WIWA", dat_birds)
hist(WIWA, dat_birds)
hist(dat_birds$WIWA)
his(dat_birds$WIWA, xlab= "number of birds counted", breaks = 0:7 - 0.5)
hist(dat_birds$WIWA, xlab= "number of birds counted", breaks = 0:7 - 0.5)
hist(dat_birds$WIWA, main= "Histogram of Wilson's Warbier Abundance", xlab= "number of birds counted", breaks = 0:7 - 0.5)

#THIS CODE IS FOR SEPTEMBER 8 2020 (FINAL COPY THAT WAS UPLOADED TO MOODLE FOR PAIR PLOT AND HISTOGRAM)
# Create pair plot for dat_habitat subsetting by name
pairs(dat_habitat[, c("elev", "ba.tot", "p.edge.1")])
#Create histogram using bird count data
hist(dat_birds$WIWA, main = "Histogram of Wison's Warbler Abundance", xlab = "Number of Birds Counted", breaks = 0:7 - 0.5)
