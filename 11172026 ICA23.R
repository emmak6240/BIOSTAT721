#11172026
# ICA 17

set.seed(123)
x1<- rnorm(1, mean =100, sd=15)
x2<-rnorm(1, mean=105, sd=15)

count <- 0

for (i in 1:10000) {
  
  x1 <- rnorm(1, mean = 100, sd = 15)
  x2 <- rnorm(1, mean = 105, sd = 15)
  
  if (x2 > x1) {
    count <- count + 1
  }
}

probability <- count / 10000
probability
