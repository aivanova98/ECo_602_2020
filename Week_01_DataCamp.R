#Question 2
v1 <- c(-2:2)
v2 <-3*v1
v1
v2
Sum_v2 <- sum(v2)
Sum_v2

#Question 3
element_1 <- 5.2
element_2 <- "five point two"
element_3 <- c(0:5)
My_list_1 <- list(two = element_1, one = element_2, three = element_3)
My_list_1

#Question 4
My_list_1[3]
My_list_1[["one"]]

#Question 5
my_vec = rep(1:3, 5)
my_vec
my_bool_vec <- my_vec == 3
my_bool_vec
data.frame(my_vec, my_bool_vec)

#Question 6
my_vec[my_bool_vec == TRUE]