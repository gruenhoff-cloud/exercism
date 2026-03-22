# this is a stub function that takes a natural_number
# and should return the difference-of-squares as described
# in the README.md
difference_of_squares <- function(natural_number) {
  n1 <- square_of_sum(natural_number)
  n2 <- sum_of_squares(natural_number)
  
  return(abs(n1 - n2))
}

square_of_sum <- function(n) {
  summation <- 0
  for (i in 1:n) {
    summation <- summation + i
  }
  return(summation ^ 2)
}

sum_of_squares <- function(n) {
  squares <- 0
  for (i in 1:n) {
    squares <- squares + i ^ 2
  }
  return(squares)
}