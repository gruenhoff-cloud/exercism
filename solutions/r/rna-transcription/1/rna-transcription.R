to_rna <- function(dna) {
  data <- data.frame(
    dna = c("G", "C", "T", "A"),
    rna = c("C", "G", "A", "U")
  )
  
  new_string <- ""
  
  for(i in 1:nchar(dna)) {
    char <- substr(dna, i, i)
    if(any(grepl(char, data$dna))) {
      new_string <- paste0(new_string, data[data$dna == char, 2])
    } else {
      stop("Invalid DNA")
    }
  }
  
  return(new_string)
}
