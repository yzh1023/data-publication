This repository is the supplementary code for the paper 'High-quality phenotypic and genotypic dataset of barley genebank core-collection to unlock untapped genetic diversity' by Zhihui Yuan et al.

The raw phenotypic data as well as the ready-to-use phenotypic values (BLUEs), and the R script to import and curate the raw phenotypic data to compute heritability and BLUEs are available in the e!DAL-PGP Repository (doi: 10.5447/IPK/2024/7); Variant calling results based on read mapping against the reference sequence of MorexV3 were stored as Variant Call Format (VCF). All the VCF files are located at the European Nucleotide Archive under the project number PRJEB80159.

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
