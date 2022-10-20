rm(list=ls(all=TRUE))
#memory.limit(size = 56000)
require(gtools)

setwd("C:/Users/joaov/Documents/IC/bbcsport")

data_mat = read.table("./bbcsport.txt")

colnames(data_mat) = c("word", "doc", "freq")
head(data_mat)
str(data_mat)

data_mat = data_mat[-1,]
data = data_mat[order(data_mat[,2], decreasing=FALSE), ]

source("utils.R")

w = transform(dataset)

chain = mcmc_bbc_cpp( data = as.matrix(dataset), w , K = 5 )

setwd("C:/Users/joaov/Documents/IC")

source("mcmc_bbc_function_v2.cpp")

mcmc_chain = mcmc_bbc(data_mat)

# save
save(chain, file = "./bbcsport/mcmc_output/mcmc_chain.Rdata")