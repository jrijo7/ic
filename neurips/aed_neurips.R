rm(list=ls(all=TRUE))
#memory.limit(size = 56000)
require(gtools)
require(Rcpp)
require(RcppArmadillo)

setwd("C:/Users/joaov/Documents/IC")

data_mat = read.table("./neurips/data/docword_nips.txt", skip = 3)


head(data_mat[,c(2,1,3)])
data_mat = data_mat[,c(2,1,3)]
colnames(data_mat) = c("word", "doc", "freq")
head(data_mat)
str(data_mat)


data = data_mat[order(data_mat[,2], decreasing=FALSE), ]
typeof(data)
doc1 <- sum(data$doc == 1)
doc1
docs <- table(data$doc)
docs
doc1 <- data[data$doc == 1,]
doc1
resultado <- aggregate(freq ~ doc, data, FUN = sum)
colnames(resultado) <- c("doc", "total_palavras")
print(resultado)
typeof(resultado)
mean(resultado$total_palavras)
median(resultado$total_palavras)
sd(resultado$total_palavras)
boxplot(resultado$total_palavras, 
        main = "Boxplot do Número de Palavras por Documento",
        xlab = "Documentos",
        ylab = "Número de Palavras")
boxplot(resultado$total_palavras, main = "Boxplot do Número de Palavras por Documento", xlab = "Documentos", ylab = "Número de Palavras")

dev.off() #limpar a janela de plots

pdf("./neurips/neurips_boxplot.pdf", height = 4, width = 8)

par(mar = c(5,7,4,4))

boxplot(resultado$total_palavras, 
        main = "", 
        xlab = "Número de palavras no documento", 
        ylab = "", 
        horizontal = TRUE, 
        cex.axis = 1.5, 
        cex.lab = 1.5)

dev.off()

pdf("./neurips/neurips_hist.pdf")

par(mar = c(5,7,4,4))

hist(resultado$total_palavras,
     main = "",
     xlab = "Número de palavras no documento",
     ylab = "Frequência",
     cex.axis = 1.5,
     cex.lab = 1.5)

dev.off()

help("boxplot")

head(resultado$total_palavras)
summary(resultado$total_palavras)
docs
resultado
sum(resultado[,])
sum(resultado[,2])
data
resultado