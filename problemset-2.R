choose_values = function(a, b, c, d, e, f, g, h, i, returnvec = TRUE, returnmatrix = TRUE){
  set = NULL
  if(returnvec == TRUE & returnmatrix == FALSE) {
    return(c(a, b, c, d, e, f, g, h, i))
  }
  if(returnvec == FALSE & returnmatrix == TRUE) {
    return(matrix(c(a, b, c, d, e, f, g, h, i), nrow = 1, ncol = 9))
  }
  if((returnvec == FALSE & returnmatrix == FALSE) | (returnvec = TRUE & returnmatrix = TRUE)) {
    return()
  }
}
# Allows the user to create a matrix or vector of the 9 values in the data.
set <- choose_values(1.3, 2.222, .44, 3.5, 4.6, 5.7, 6.99, 8.1, 10.6, TRUE, FALSE)
# I put a sample 9 values and used a vector, but you can put whatever you want.
sig_one = function(n) {
  as.numeric(head(strsplit(as.character(n),'')[[1]],n=1))
}
list_sigs <- sapply(set, sig_one)



