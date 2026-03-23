create <- function(row, col) {
  if (row < 0 || row > 7 || col < 0 || col > 7) {
    stop("Invalid coords")
  }
  paste0(letters[row + 1], col + 1)
}

can_attack <- function(queen1, queen2) {
  x1 <- match(substr(queen1, 1, 1), letters) - 1
  x2 <- match(substr(queen2, 1, 1), letters) - 1
  y1 <- as.numeric(substr(queen1, 2, 2))
  y2 <- as.numeric(substr(queen2, 2, 2))
  
  x1 == x2 ||
  y1 == y2 ||
  abs(x1 - x2) == abs(y1 - y2)
}