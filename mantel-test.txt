#Rogers distance-------------------------------------------------------------------------
library(vcfR)
library(poppr)
library(adegenet)
vcf <- read.vcfR(file="~/PGR_spring_imputed.vcf")
dat <- vcfR2genind(vcf)
RD_matrix <- rogers.dist(dat)
RD_matrix <- as.matrix(RD_matrix)
write.csv(RD_matrix,"RD_matrix_PGR_spring.csv")

#Euclidean distance-------------------------------------------------------------------------
library(dplyr)
library(philentropy)
ED_matrix <- distance(phenotype_data)

# mantel test -------------------------------------------------------------
library(vegan) #version 2.6-4
#library(ggcor)
mantel(ED_matrix, RD_matrix)