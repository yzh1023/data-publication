library(rrBLUP)
library(BWGS)
library(ggplot2)

load("~/input.RData") # include phenotypic data (Pheno) and genotype matrix (geno)

# Cross validation using GBLUP method

cv_gblup <- bwgs.cv(geno, set_pheno, 
                    geno.impute.method = "mni",
                    predict.method = "gblup", 
                    nFolds = 5, 
                    nTimes = 100)

cv <- c(cv_gblup$cv)

# new data frame for summary

cv_gblup$summary

mean <- cv_gblup$summary[1]
sd <- cv_gblup$summary[2]

df1_summary <- data.frame(trait, mean, sd)

# plot

main_theme = theme(aspect.ratio = 1,
                   panel.background=element_blank(),
                   panel.border = element_rect(fill = NA),
                   axis.title.x = element_blank(),
                   legend.position="none",
                   strip.background = element_rect(color = "black",fill="white"),
                   text=element_text(family="sans", size=12))

ggplot(cross_validation, aes(x=trait, y=accuracy)) + geom_boxplot() + labs(y="Prediction ability") + theme_bw() + main_theme
