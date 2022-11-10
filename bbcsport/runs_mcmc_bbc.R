rm(list=ls(all=TRUE))
#memory.limit(size = 56000)
require(gtools)
require(Rcpp)
require(RcppArmadillo)

setwd("C:/Users/joaov/Documents/IC")

data_mat = read.table("./bbcsport/data/bbcsport.txt")

colnames(data_mat) = c("word", "doc", "freq")
head(data_mat)
str(data_mat)

data_mat = data_mat[-1,]
data = data_mat[order(data_mat[,2], decreasing=FALSE), ]

source("./codes/utils.R")

sourceCpp("./codes/mcmc_function.cpp")

w = transform(data_mat)

chain = mcmc_cpp( data = as.matrix(data_mat), w , K = 5, n_iter = 20000, save_it = 10 )

# save
save(chain, file = "./bbcsport/mcmc_output/mcmc_chain.Rdata")