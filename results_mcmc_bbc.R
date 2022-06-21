
rm(list=ls(all=TRUE))
#memory.limit(size = 56000)
require(gtools)

setwd("/home/tadeu/UFRJ/Orientacoes_IC/Joao/ic-main")

data_mat = read.table("./bbc_sport/bbcsport.txt")

colnames(data_mat) = c("word", "doc", "freq")

data = data_mat[order(data_mat[,2], decreasing=FALSE), ]

# load mcmc chain
load(file = "./bbc_sport/mcmc_output/mcmc_chain_K_5.Rdata")

# extracts marginal chains
beta_chain = mcmc_chain$beta

plot( beta_chain[1,1, ], type = "l" )
plot( beta_chain[1,2, ], type = "l" )

mcmc_ind = 11:500

mean(beta_chain[1,1,mcmc_ind])
# do 1 at? o V, 2 at? o V, 3 at? o V ...
#usando o for no beta_chain
#comentar o z_chain e a parte da itera??o do z chain

beta_chain
plot(x = mcmc_chain$beta[1,1,], type = "l")
K = 10
V = 4613
beta_matrix = matrix(0,K,V)
for (k in 1: K){
  for (v in 1:V){
    beta_matrix[k,v] = median(beta_chain[k,v,])
  }
}
setwd("..")
words <- as.vector(read.table("./bbcsport_terms"))[,1]
words <- as.vector(read.table("./bbcsport_terms"))[,1]
length(words)
words[2]
words[1,1]
words[2,1]
sort_index<- order(beta_matrix[1,],decreasing = TRUE)
beta_matrix[1,sort_index]
sort_index <- sort_index[1:20]
words[sort_index[1:20]]


T = 1
words <- as.vector(read.table("./bbcsport_terms"))[,1]
length(words)
topics_matrix = matrix("0",20,10)
while (T<= 10) {
  sort_index <- order(beta_matrix[T,], decreasing = TRUE)
  beta_matrix[T,sort_index]
  sort_index <- sort_index[1:20]
  topics_matrix[,T] <- words[sort_index[1:20]]
  T = T+1
}
dim(theta_chain)
theta_chain = mcmc_chain$theta
plot(x = theta_chain[1,1,], type = "l")
K = 737
V = 10


theta_matrix <- apply(X = theta_chain, MARGIN = c(1,2), FUN = median)
head(theta_matrix)
theta_matrix[100:105,]
#MARGIN = 1 lines
#MARGIN = 2 column
apply(X = theta_matrix, FUN = which.max, MARGIN = 1)
