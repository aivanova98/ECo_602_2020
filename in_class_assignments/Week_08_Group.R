#Q1
wiwa_counts = c(2, 6)
dpois(x = wiwa_counts, lambda = 4.1)
prod(dpois(x = wiwa_counts, lambda = 4.1))
sum(log(dpois(x = wiwa_counts, lambda = 4.1)))

#Q2
dat_bird = read.csv(here::here("data", "bird.sta (2).csv"))
dat_habitat = read.csv(here::here("data", "hab.sta (2).csv"))
dat_all = merge(dat_bird, dat_habitat)
summary(dat_all$WIWR)
hist(dpois(x = dat_all$WIWR, lambda = 1.6))
png(filename = "histogram_WIWR")
hist(dat_all$WIWR, main = "Winter Wren Count Histogram data", xlab = "number of counts", breaks = 6)
dev.off()
sum(log(dpois(x = dat_all$WIWR, lambda = 1.6)))

pbinom(dat_all$WIWR, 6, 0.75, log=FALSE)
