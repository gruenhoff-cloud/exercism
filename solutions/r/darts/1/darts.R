score <- function(x, y) {
  outer <- 10
  middle <- 5
  inner <- 1
  
  rad <- lenvec(x, y)
  
  if(rad <= outer) {
    if(rad <= middle) {
      if(rad <= inner) {
        return(10)
      } else {
        return(5)
      }
    } else {
      return(1)
    }
  } else {
    return (0)
  }
}

lenvec <- function(x, y) {
  return(sqrt(x ^ 2 + y ^ 2))
}