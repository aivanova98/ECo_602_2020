#GGC
GGC <- lm(Temp ~ Canopy + Impervious, GGC_30avg)
GGC
summary(GGC)

#Cities 
Cities <- lm(Temp ~ Canopy + Impervious, Cities_30avg)
Cities
summary(Cities)

#Attleboro 
Attleboro <- lm(Temp ~ Canopy + Impervious, Attleboro_30avg)
Attleboro
summary(Attleboro)

#Barnstable
Barnstable <- lm(Temp ~ Canopy + Impervious, Barnstable_30avg)
Barnstable
summary(Barnstable)

#Boston 
Boston <- lm(Temp ~ Canopy + Impervious, Boston_30avg)
Boston
summary(Boston)