
rm(list=ls(all=TRUE))
#memory.limit(size = 56000)
require(gtools)
require(Rcpp)
require(RcppArmadillo)

# set working directory to the location of the main github folder in local machine
#setwd("C:/Users/joaov/Documents/IC")
setwd("~/UFRJ/LDA")

data_mat = read.table("./neurips/data/docword_nips.txt", skip = 3)

colnames(data_mat) = c("doc", "word", "freq")
head(data_mat[,c(2,1,3)])
str(data_mat)

data_mat = data_mat[,c(2,1,3)]

data = data_mat[order(data_mat[,2], decreasing=FALSE), ]

source("./codes/utils.R")

sourceCpp("./codes/mcmc_function.cpp")

source("./codes/mcmc_function.R")

w = transform(data)

# for k = 10 is done
# for k = 15 is in done
# for k = 20 is in done

# comparar tempo computacional com o pacote lda

start = Sys.time()
mcmc_cpp( data = as.matrix(data), w , K = 20, n_iter = 10, save_it = 5 )
end = Sys.time()
end - start

nips_vocab <- read.table("../neurips/data/nips_vocab.txt")[,1]


chain = mcmc_cpp( data = as.matrix(data), w = w, K = 20, n_iter = 15000, save_it = 10)

save(chain, file = "./neurips/mcmc_chain_20.Rdata")
