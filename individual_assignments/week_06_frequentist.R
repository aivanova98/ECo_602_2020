#This function will give you the height at 3 of the binomial distribution with the probability of success of 0.75.   
dbinom(3, 4, 0.75, log=FALSE)
#Q2
pbinom(3, 4, 0.75, log=FALSE)
#Q3
Q3 <- pbinom(3, 5, 0.75, log=FALSE)
Q3
Q3.1 <- 1- Q3
Q3.1
#Q4 and Q5
Q4 <- pnorm(1.2, mean = 2, sd = 2, lower.tail = TRUE, log.p = FALSE)
Q4
Q4.1 <- 1-Q4
Q4.1 
#Q6
A <- pnorm(1.2, mean = 2, sd = 2, lower.tail = TRUE, log.p = FALSE)
A
B <- pnorm(3.2, mean = 2, sd = 2, lower.tail = TRUE, log.p = FALSE)
B
C <- B-A
C
#Q7 The more times you sample, the more the histogram looks like the skewed graph like the population data that you "wouldn't" know
#Q8 Looks still relatively like the skewed graph but more condensed and without a tail 
#Q9 Looks like a normal distribution 

dbinom(3, 4, 0.75, log=FALSE)
pbinom(3, 4, 0.75, log=FALSE)

Q3 <- pbinom(3, 5, 0.75, log=FALSE)

Q3

Q3.1 <- 1- Q3

Q3.1

pnorm(1.2, mean = 2, sd = 2, lower.tail = TRUE, log.p = FALSE)
