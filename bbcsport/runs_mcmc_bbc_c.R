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

source("./codes/mcmc_bbc_function.R")

w = transform(data_mat)

start = Sys.time()
mcmc_cpp( data = as.matrix(data_mat), w , K = 5, n_iter = 10, save_it = 5 )
end = Sys.time()
end - start

start = Sys.time()
mcmc_lda( data_mat, n_iter = 10, save_it = 5)
end = Sys.time()
end - start

# save
# save(chain, file = "./bbcsport/mcmc_output/mcmc_chain.Rdata")