transform <- function(data_mat
){
  D = max(data_mat[, 2])
  w = rep( list(NULL), D)
  for (d in 1:D){
    doc_d = data_mat[which(data_mat$doc == d), c(1,3)]
    print(paste('d = ', d))
    for (i in 1:nrow(doc_d) ){
      w[[d]] = c(w[[d]], rep( doc_d$word[i] - 1, doc_d$freq[i]) )
    } 
  }
  return(w)
}
