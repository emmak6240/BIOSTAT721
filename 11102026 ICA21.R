#11102026
#ICA- 21

x <- 1:15
Y <- sample(x, size =1)

print( 
ifelse(Y >=10, 
       paste(Y, "Element is greater than or equal to 10"),
       paste(Y, "Element is less than 10")
))

