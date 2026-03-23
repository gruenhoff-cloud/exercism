egg_count <- function(display_value) {
  flipped <- 0
  while(display_value != 0) {
    flipped <- flipped + (display_value %% 2)
    display_value <- display_value %/% 2
  }
  return(flipped)
}
