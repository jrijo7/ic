
rm(list=ls(all=TRUE))
#memory.limit(size = 56000)
require(gtools)

setwd("C:/Users/joaov/Documents/IC/bbcsport")

#reading the database
data_mat = read.table("bbcsport.txt")

#naming the columns
colnames(data_mat) = c("word", "doc", "freq")
#database header
head(data_mat)
#description
str(data_mat)

# sorting based on the value of documents
data = data_mat[order(data_mat[,2], decreasing=FALSE), ]

# Number of topics
# In this specific document there are 5 topics
K = 5
# Number of words in the vocabulary
V = max(data_mat[ ,1])
# number of documents
D = max(data_mat[, 2])
# number of words in document d
# the zeros will be replaced by the number of words in each document
N = rep(0, D)

# defining N[d]
# is the total number of words in each document
for ( d in 1:D ){
  lines_document_d = which(data_mat$doc == d)
  N[d] = sum( data_mat[lines_document_d, 3] )
}

# Initializing hyperparameters
alpha = rep(1, K)
eta = rep(1, V)

# Inicializing parameters
beta = matrix(1/V, nrow = K, ncol = V)
theta = matrix(1/K, nrow = D, ncol = K)
z = rep( list(1), D)
for (d in 1:D){
  z[[d]] = sample( x=1:K, size = N[d], replace = TRUE)
}

# We create the w list by desagregating the original matrix of 
# documents. We pretend that repeated words occur in sequence within
# each document. This only works because we are dealing with a bag of
# words model so the order in which words appear are irrelevant.
w = rep( list(NULL), D)
for (d in 1:D){
  doc_d = data[which(data$doc == d), c(1,3)]
  for (i in 1:nrow(doc_d) ){
    w[[d]] = c(w[[d]], rep( doc_d$word[i], doc_d$freq[i]) )
  } 
}

n_iter = 6000
save_it = 100

beta_chain = array(0, dim = c(K, V, n_iter/save_it) )
theta_chain = array(0, dim = c(D, K, n_iter/save_it) )
z_chain = rep(list(0), n_iter/save_it)

for(iter in 1:n_iter){
  
  # sample from full conditional distribution of beta
  ######################################################
  beta_dirichlet = matrix(eta[1],  nrow = K, ncol = V)
  for (d in 1:D){
    for(n in 1:N[[d]]){
      beta_dirichlet[z[[d]][n], w[[d]][n] ] = beta_dirichlet[z[[d]][n], w[[d]][n] ] + 1
    }
  }
  for(k in 1:K){
    beta[k, ] = rdirichlet(n=1, alpha = beta_dirichlet[k, ] )
  }
  
  # sample from full conditional distribution of theta
  ######################################################
  theta_dirichlet = matrix(alpha[1], nrow = D, ncol = K)
  theta = matrix(0, nrow = D, ncol = K)
  for (d in 1:D){
    for (n in 1:N[[d]]){
      theta_dirichlet[ d, z[[d]][n] ] = theta_dirichlet[ d, z[[d]][n] ] + 1
    }
    theta[d, ] = rdirichlet(1, theta_dirichlet[d, ])
  }
  
  # sample from full conditional distribution of z
  ######################################################
  for(d in 1:D){
    for (n in 1:N[d]){
      p_zdn = rep(0, K)
      for(k in 1:K){
        p_zdn[k] = beta[k, w[[d]][n] ] * theta[d, k]
      }
      p_zdn = p_zdn/sum(p_zdn)
      z[[d]][n] = sample(x=1:K, size = 1, prob = p_zdn)
    }
  }
  
  # saving sampled parameters
  beta_chain[,, iter/save_it] = beta
  theta_chain[,, iter/save_it] = theta
  z_chain[[iter/save_it]] = z  
  
  # print current iteration
  print(iter)

}

# create mcmc chain with the chains for each parameter
mcmc_chain = list( "beta" = beta_chain,
                   "theta" = theta_chain)

# save
save(mcmc_chain, file = "./mcmc_output/mcmc_chain_v2.Rdata")

# load mcmc chain
load(file = "./mcmc_output/mcmc_chain_v2.Rdata")

plot( beta_chain[1,1, ], type = "l" )
plot( beta_chain[1,2, ], type = "l" )

mean(beta_chain[1,1,1001:3000])
# do 1 at� o V, 2 at� o V, 3 at� o V ...
#usando o for no beta_chain
#comentar o z_chain e a parte da itera��o do z chain

beta_chain = mcmc_chain$beta
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
