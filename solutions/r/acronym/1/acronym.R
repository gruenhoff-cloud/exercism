acronym <- function(input) {
  new_string <- ""
  tmp <- strsplit(input, "[ -]")
  for(i in 1:length(tmp[[1]])) {
    letter <- ""
    for(j in 1:nchar(tmp[[1]][i])){
      if(any(grepl(substr(tmp[[1]][i], j, j), c(letters, LETTERS)))){
        letter <- substr(tmp[[1]][i], j, j)
        break
      }
    }
    new_string <- paste0(new_string, toupper(letter))
  }
  return(new_string)
}
