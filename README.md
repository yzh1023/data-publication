This repository is the supplementary code for the paper 'High-quality phenotypic and genotypic dataset of barley genebank core-collection to unlock untapped genetic diversity' by Zhihui Yuan et al.

### filtering for the raw vcf file.txt

This file serves as the filtration process code of the raw vcf file submitted to European Nucleotide Archive under the project number PRJEB53924, including:
* the filtration of minor allele frequency, missing value,
* marker pruning based on linkage disequilibrium
* imputation
* admixture

(The filtering criteria can be changed depending on the different research topic)

### mantel_test.R

It contains the R script for conducting the mantel test 

### cross-validation.R

It contains the R script for five-fold cross-validation, and the script to generate the plot.

### plot_admixture.R

It contains the R script for generating the admixture plot
