This repository is the supplementary code for the paper 'From genebank to field: enhancing barley breeding with precision phenotyping and genotyping' by Zhihui Yuan et al. in 2024.

### filtering for the raw vcf file.txt

This file serves as the filtration process code of the raw vcf file submitted to European Nucleotide Archive under the project number PRJEB53924, including:
* the filtration of minor allele frequency, missing value,
* marker pruning based on linkage disequilibrium
* imputation
* admixture

(The filtering criteria can be changed depending on the different research topic)

### mantel_test.R

Contains the R script for conducting the mantel test 
