# Creating a dataframe
require("here")
here("data", "delomys.csv")
dat_delomys <- read.csv(here("data", "delomys.csv"))

#Previewing the data 
head(dat_delomys)

# Creating a scatterplot
png(filename = "delomys_scatterplot_mass_height.png")
plot(x= dat_delomys$body_mass, y = dat_delomys$body_length, xlab = "body mass", ylab = "body length", main = "Scatterplot comparing body mass and body length")
dev.off()

# Conditional boxplot
png(filename = "delomys_boxplot_bodymass_sex")
boxplot(body_mass ~ sex, data = dat_delomys)
dev.off()

# Conditional boxplot
png(filename = "delomys_boxplot_bodymass_species")
boxplot(body_mass ~ binomial, data = dat_delomys)
dev.off()

# Conditionalboxplot, there \n allows you to plit up the text, xlab=NULL allows you to get rid of an axis label, las=2 allows you to flip the text verticle
png(filename = "delomys_boxplot_bodymass_sex_species")
boxplot(body_mass ~ sex*binomial, data = dat_delomys, names = c("female \n D. Dorsalis", "male \n D. Dorsalis", "female \n D. sublineatus", "male \n D. sublineatus"), xlab = NULL, las=2)
dev.off()
