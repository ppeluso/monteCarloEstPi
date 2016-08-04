count <- 0 
full_count <- 0 
x_in <- c()
y_in <- c()

x_out <- c()
y_out <- c()

for(i in 1: 10000)
{
  x <- runif(1)
  y <- runif(1)
  
  if( sqrt(x*x + y*y) < 1)
  {
    count <- count + 1 
    x_in[i] <- x
    y_in[i] <- y
  }
  else 
  {
    x_out[i] <- x
    y_out[i] <- y
    
  }
  
  full_count <- full_count + 1
}

print(4 * count / full_count)

k <- 1000
for(i in 1:10)
{

print(ggplot() + geom_point(aes(x = x_in[1:k], y = y_in[1:k]), colour = "red") + geom_point(aes(x = x_out[1:k], y = y_out[1:k]), colour = "blue") + xlab("")+ ylab("") + ggtitle("Estimating PI") )

  k <- k + 1000
}

