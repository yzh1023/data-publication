library(rrBLUP)
library(BWGS)

load("~/input.RData") # include phenotypic data (Pheno) and genotype matrix (geno)

# Cross validation using GBLUP method

cv_gblup <- bwgs.cv(geno, set_pheno, 
                    geno.impute.method = "mni",
                    predict.method = "gblup", 
                    nFolds = 5, 
                    nTimes = 100)

cv <- c(cv_gblup$cv)

#new data frame for summary

cv_gblup$summary

mean <- cv_gblup$summary[1]
sd <- cv_gblup$summary[2]

df1_summary <- data.frame(trait, mean, sd)

