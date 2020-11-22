# Tests whether the Gentoo penguin flipped length are different from zero  
require(palmerpenguins)
penguin_dat = droplevels(subset(penguins, species != "Gentoo"))
summary(penguin_dat)
t.test(subset(penguins, species == "Gentoo")$flipper_length_mm)

# Tests whether the Gentoo flipper length are equal to 218
t.test(
  x = subset(penguins, species == "Gentoo")$flipper_length_mm,
  mu = 218
)

# Tests whether Gentoo penguins flippers are smalelr than 218 mm (one tailed AH)
t.test(
  x = subset(penguins, species == "Gentoo")$flipper_length_mm,
  mu = 218,
  alternative = "less"
)

# Comparing flipper lenghs of two species
t.test(flipper_length_mm ~ species, data = subset(penguins, species != "Chinstrap"))

# Plotting histograms and density plots
par(mfrow = c(1, 2))
hist(penguins$body_mass_g, breaks = 80, main = "histogram of body mass", xlab = "body mass (g)")
plot(density(penguins$body_mass_g, na.rm = TRUE), main = "density plot of body mass")

# Conditional boxplot for categorical data
require(palmerpenguins)
boxplot(body_mass_g ~ species, data = penguins)

# Extracting measurements for each species
dat_chinstrap = subset(penguins, species == "Chinstrap")

# Calculating mean body mass for each species
mean(dat_chinstrap$body_mass_g, na.rm = TRUE)

# Conducting a Shapiro tests on each species' body mass
shapiro.test(dat_chinstrap$body_mass_g)

# Shortcut for calculating species body masses
aggregate(body_mass_g ~ species, data = penguins, FUN = mean)

# Linear model
fit_species = lm(body_mass_g ~ species, data = penguins)

# To look at model coefficients from linear model
summary(fit_species)

#Conducting an ANOVA
anova(fit_species)

# conditional boxplot for penguin body mass conditioned on both species and sex:
boxplot(body_mass_g ~ sex * species, data = penguins)

# Q1 Looking at the boxplot we find that there could potentially be an important effect of sex because consistently across the species, male penguins are heavier than their female counterparts when examining the median of the boxplots. 

# Q2 If we add sex as a second factor it improves our model fit. We think that including them gives us more information than either one separately. 
# Q3 conditional linear model 
fit_both = lm(body_mass_g ~ sex * species, data = penguins)
summary(fit_both)

# Q4 the base case is female Adelie penguins

# Q5 Female Chinstrap using two categories: intercept + SpeciesChinstrap

# Q6 The average mass of female Chinstrap penguins is 

