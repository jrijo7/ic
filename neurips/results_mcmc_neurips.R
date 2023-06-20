
rm(list=ls(all=TRUE))
#memory.limit(size = 56000)
require(gtools)
require(Rcpp)
require(RcppArmadillo)

setwd("C:/Users/joaov/Documents/IC")

data_mat = read.table("./neurips/data/docword_nips.txt", skip = 3)

head(data_mat[,c(2,1,3)])
str(data_mat)

data_mat = data_mat[,c(2,1,3)]
colnames(data_mat) = c("word", "doc", "freq")

data_mat = data_mat[-1,]
data = data_mat[order(data_mat[,2], decreasing=FALSE), ]
data_mat = as.matrix(data_mat)

# Defining variables
K = 10
D = max(data_mat$doc)
V = max(data_mat$word)

# load mcmc chain
load(file = "./neurips/mcmc_output/mcmc_chain_10.Rdata")

# extracts marginal chains
beta_chain = chain$beta
chain$beta = 0
theta_chain = chain$theta
chain$theta = 0
mcmc_ind = 500:2000


plot( beta_chain[1,1, ], type = "l" )
plot( beta_chain[1,2, ], type = "l" )
plot( beta_chain[1,3, ], type = "l" )
plot( theta_chain[1,1, ], type = "l" )
plot( theta_chain[1,2, ], type = "l" )
plot( theta_chain[1,3, ], type = "l" )
hist(beta_chain[1,3,], freq = FALSE)
hist(beta_chain[1,4,mcmc_ind], freq = FALSE)
plot( beta_chain[1,4, ], type = "l" )
beta_chain[1,3,]

new_beta = beta_chain[,,mcmc_ind]
new_theta = theta_chain[,,mcmc_ind]
hist(new_theta[1,1,])
hist(new_theta[1,2,])
hist(new_theta[1,3,])
hist(new_theta[1,4,])
hist(new_theta[1,5,])
median(new_theta[1,1,])
median(new_theta[1,2,])
median(new_theta[1,3,])
median(new_theta[1,4,])
median(new_theta[1,5,])
median(beta_chain[1,1,])

####
v = c(3,4,5,6, 1, 2)
order(v, decreasing = TRUE)
v[order(v, decreasing = TRUE)]
####
median(beta_chain[1,3,mcmc_ind])
mean(beta_chain[1,1,mcmc_ind])


# Matriz de palavras por tópico

# do 1 at? o V, 2 at? o V, 3 at? o V ...
#usando o for no beta_chain
#comentar o z_chain e a parte da itera??o do z chain

beta_matrix = matrix(0,K,V)
for (k in 1: K){
  for (v in 1:V){
    beta_matrix[k,v] = mean(beta_chain[k,v,mcmc_ind])
  }
}

words <- as.matrix(read.table("C:/Users/joaov/Documents/IC/neurips/data/nips_vocab.txt"))[,1]

#### teste

sort_index<- order(beta_matrix[1,],decreasing = TRUE)
beta_matrix[1,sort_index]
sort_index <- sort_index[1:10]
words[sort_index[1:10]]

####

T = 1
topics_matrix = matrix("0",10,K)
while (T<= K) {
  sort_index <- order(beta_matrix[T,], decreasing = TRUE)
  sort_index <- sort_index[1:K]
  topics_matrix[,T] <- words[sort_index]
  T = T+1
}
topics_matrix

###

source("./codes/utils.R")

##DIC_LDA(data_mat = data_mat, chain = chain, mcmc_ind = seq(1001,2000,by=2))

w = transform(data_mat)

DIC_LDA(data_mat = data_mat,beta_chain = beta_chain[,,1001:2000],theta_chain = theta_chain[,,1001:2000], w = w) 

sourceCpp("./codes/dic_c.cpp")

'dim(theta_chain)

theta_matrix = matrix(0,D,K)
for (d in 1: D){
  for (k in 1:K){
    theta_matrix[d,k] = mean(theta_chain[d,k,mcmc_ind])
  }
}

dim(theta_matrix)

###alert####

theta_matrix = cbind(theta_matrix,rep(0,D))

for (d in 1:D){
  theta_matrix[d,K+1] = which.max(theta_matrix[d,])
}


theta_matrix

plot(theta_matrix[,6])

abline(v = 100.5)
abline(v = 225)
abline(v = 490)
abline(v = 637)
abline(v = 737)
abline(v = 0)'

