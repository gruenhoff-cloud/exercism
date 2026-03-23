# Uncomment the line below to enable grapheme cluster tests
# enable_grapheme_clusters <- TRUE

reverse <- function(text) {
    new_string <- ""
    for(i in 1:nchar(text)){
      char <- substr(text, i, i)
      new_string <- paste0(char, new_string)
    }
    return(new_string)
}
