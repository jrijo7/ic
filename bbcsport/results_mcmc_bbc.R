
rm(list=ls(all=TRUE))
#memory.limit(size = 56000)
require(gtools)

setwd("C:/Users/joaov/Documents/IC")

data_mat = read.table("./bbcsport/data/bbcsport.txt")

colnames(data_mat) = c("word", "doc", "freq")

data = data_mat[order(data_mat[,2], decreasing=FALSE), ]

# load mcmc chain
load(file = "./bbcsport/mcmc_output/mcmc_chain.Rdata")

# extracts marginal chains
beta_chain = chain$beta
mcmc_ind = 51:150


plot( beta_chain[1,1, ], type = "l" )
plot( beta_chain[1,2, ], type = "l" )
plot( beta_chain[1,3, ], type = "l" )
hist(beta_chain[1,3,mcmc_ind], freq = FALSE, xlim = c(0,0.002))
hist(beta_chain[1,4,mcmc_ind], freq = FALSE, xlim = c(0,0.002))
plot( beta_chain[1,4, ], type = "l" )


median(beta_chain[1,3,mcmc_ind])

mean(beta_chain[1,1,mcmc_ind])


# do 1 at? o V, 2 at? o V, 3 at? o V ...
#usando o for no beta_chain
#comentar o z_chain e a parte da itera??o do z chain

beta_chain
plot(x = chain$beta[1,1,], type = "l")
K = 5
V = 4613
beta_matrix = matrix(0,K,V)
for (k in 1: K){
  for (v in 1:V){
    beta_matrix[k,v] = mean(beta_chain[k,v,mcmc_ind])
  }
}

sum(beta_matrix[2,])


words <- as.matrix(read.table("./bbcsport/data/bbcsport.terms"))[,1]

length(words)
words[2]
sort_index<- order(beta_matrix[1,],decreasing = TRUE)
beta_matrix[1,sort_index]
sort_index <- sort_index[1:20]
words[sort_index[1:20]]


T = 1
words <- as.matrix(read.table("./bbcsport/data/bbcsport.terms"))[,1]
length(words)
topics_matrix = matrix("0",20,5)
while (T<= 5) {
  sort_index <- order(beta_matrix[T,], decreasing = TRUE)
  sort_index <- sort_index[1:20]
  topics_matrix[,T] <- words[sort_index]
  T = T+1
}

theta_chain = chain$theta
dim(theta_chain)
plot(x = theta_chain[1,1,], type = "l")
K = 5
V = 737


theta_matrix <- apply(X = theta_chain, MARGIN = c(1,2), FUN = mean)
head(theta_matrix)
theta_matrix[100:737,]
#MARGIN = 1 lines
#MARGIN = 2 column
apply(X = theta_matrix, FUN = which.max, MARGIN = 1)
