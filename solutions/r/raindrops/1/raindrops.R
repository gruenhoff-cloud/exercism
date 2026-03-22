raindrops <- function(number) {
  txt <- ""
  
  txt <- paste0(txt, ifelse(number %% 3 == 0, "Pling", ""))
  txt <- paste0(txt, ifelse(number %% 5 == 0, "Plang", ""))
  txt <- paste0(txt, ifelse(number %% 7 == 0, "Plong", ""))
  txt <- ifelse(nchar(txt) == 0, as.character(number), txt)
  
  return(txt)
}
