rm(list = ls())
setwd("C:/Users/joaov/Documents/IC")
load(file = "./neurips/mcmc_output/mcmc_chain_10.Rdata")

# extracts marginal chains
beta_chain = chain$beta
chain$beta = 0
theta_chain = chain$theta
chain$theta = 0
rm(chain)
mcmc_ind = 50:500

data_mat = read.table("./neurips/data/docword_nips.txt", skip = 3)

head(data_mat[,c(2,1,3)])
str(data_mat)

data_mat = data_mat[,c(2,1,3)]
colnames(data_mat) = c("doc", "word", "freq")

data_mat = data_mat[-1,]
data = data_mat[order(data_mat[,2], decreasing=FALSE), ]

# LEIA DO ARQUIVO utils.R ao invés de copiar pra cá o texto da função
source("./codes/utils.R")

w = transform(data)
d = 1
m = 1
n = 1
M = length(mcmc_ind)
D = max(data_mat$doc)
beta_chain[,w[[d]][n],m] %*% theta_chain[d,,m]

for (d in 1:D){
  w[[d]] = w[[d]] + 1
}



mean_D_theta = 0
for (m in mcmc_ind){
  print(m)
  for (d in 1:D){
    Nd = length(w[[d]])
    for( n in 1:Nd){
      mean_D_theta = mean_D_theta + log(beta_chain[,w[[d]][n],m] %*% theta_chain[d,,m])
    }
  }
}
mean_D_theta = -2*mean_D_theta/M



beta_barra = apply(X = beta_chain,FUN = mean, MARGIN = c(1,2))

theta_barra = apply(X = theta_chain,FUN = mean, MARGIN = c(1,2))

D_theta_mean = 0
for (d in 1:D){
  Nd = length(w[[d]])
  for (n in 1:Nd){
    D_theta_mean = D_theta_mean + log(beta_barra[,w[[d]][n]]%*%theta_barra[d,])
  }
}
D_theta_mean = -2 * D_theta_mean

p_D = mean_D_theta - D_theta_mean

DIC = p_D + mean_D_theta
DIC
write.table(file = "DIC_k_10.txt", DIC)
