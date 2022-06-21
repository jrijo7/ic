
rm(list=ls(all=TRUE))
#memory.limit(size = 56000)
require(gtools)

setwd("~/UFRJ/Orientacoes_IC/Joao/ic-main")

data_mat = read.table("./bbc_sport/bbcsport.txt")

colnames(data_mat) = c("word", "doc", "freq")
head(data_mat)
str(data_mat)

data = data_mat[order(data_mat[,2], decreasing=FALSE), ]

# Number of topics
K = 5

source("mcmc_bbc_function.R")
mcmc_chain = mcmc_bbc(data_mat)

# save
save(mcmc_chain, file = "./bbc_sport/mcmc_output/mcmc_chain_K_5.Rdata")
