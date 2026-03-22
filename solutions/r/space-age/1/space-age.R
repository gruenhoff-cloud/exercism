space_age <- function(seconds, planet) {
  data <- data.frame(
    planets = c("mercury", "venus", "earth", "mars", "jupiter", "saturn", "uranus", "neptune"),
    orbital = c(0.2408467, 0.61519726, 1, 1.8808158, 11.862615, 29.447498, 84.016846, 164.79132)
  )
  
  earth_year <- 31557600
  
  year <- earth_year * data[data$planets == planet, 2]
  
  age <- seconds / year
  
  return(round(age, 2))
}