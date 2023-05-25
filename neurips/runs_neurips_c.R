rm(list=ls(all=TRUE))
#memory.limit(size = 56000)
require(gtools)
require(Rcpp)
require(RcppArmadillo)

# set working directory to the location of the main github folder in local machine
setwd("C:/Users/joaov/Documents/IC")

data_mat = read.table("./neurips/data/docword_nips.txt", skip = 3)

colnames(data_mat) = c("doc", "word", "freq")
head(data_mat[,c(2,1,3)])
str(data_mat)

data_mat = data_mat[,c(2,1,3)]

# data_mat = data_mat[-1,] <-------- NAO DELETE A PRIMEIRA LINHA. ELA PODE PERMANECER SEM PROBLEMAS
data = data_mat[order(data_mat[,2], decreasing=FALSE), ]

setwd("./codes")

source("utils.R")

sourceCpp("./mcmc_function.cpp")

source("./mcmc_bbc_function.R")

w = transform(data)

# for k = 10 is done
# for k = 15 is in done
# for k = 20 is in fault

# comparar tempo computacional com o pacote lda


start = Sys.time()
mcmc_cpp( data = as.matrix(data), w , K = 20, n_iter = 10, save_it = 5 )
end = Sys.time()
end - start
data_origin = data
data = cbind(data[,1] - 1, data[,2], data[,3])
  
D <- max(data[,2])
data_lda = rep(list(1), D)
data=as.matrix(data)
mode(data) = "integer"
for(d in 1:D){
  ind_doc = which(data[,2] == d)
  data_lda[[d]] <- t(data[ind_doc,-2])
}

nips_vocab <- read.table("../neurips/data/nips_vocab.txt")[,1]

lda.collapsed.gibbs.sampler(documents = data_lda, K = 10, vocab = nips_vocab, num.iterations = 10,
                            alpha = 1, eta = 1)
min(data[,1])


chain = mcmc_cpp( data = as.matrix(data), w = w , K = 20, n_iter = 15000, save_it = 10)

save(chain, file = "C:/Users/joaov/Documents/IC/neurips/mcmc_output/mcmc_chain_20.Rdata")
