square <- function(n) {
  if(n >= 1 & n <= 64) {
    return(2 ^ (n - 1))
  }
  stop("Invalid n")
}

total <- function() {
  sums <- 0
  for(i in 1:64) {
    sums <- sums + square(i)
  }
  return(sums)
}
