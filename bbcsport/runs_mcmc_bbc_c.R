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

setwd("C:/Users/joaov/Documents/IC/codes")

source("utils.R")

sourceCpp("./mcmc_function.cpp")

source("./mcmc_function.R")

w = transform(data)

chain = mcmc_cpp( data = as.matrix(data), w , K = 5, n_iter = 200000 )

start = Sys.time()
mcmc_cpp( data = as.matrix(data), w , K = 5, n_iter = 10, save_it = 5 )
end = Sys.time()
end - start

start = Sys.time()
mcmc_lda( data, n_iter = 10, save_it = 5)
end = Sys.time()
end - start

# save
  save(chain, file = "C:/Users/joaov/Documents/IC/bbcsport/mcmc_output/mcmc_chain.Rdata")
