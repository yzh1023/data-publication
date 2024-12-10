This repository is the supplementary code for the paper 'High-quality phenotypic and genotypic dataset of barley genebank core-collection to unlock untapped genetic diversity' by Yuan et al. The dataset includes whole genome sequencing data of 812 barley (Hordeum vulgare L.) plant genetic resources (PGRs) and 298 European elite materials released between 1949 and 2021, as well as the phenotypic data for four disease resistance traits and three agronomic traits. The robustness of the investigated traits and the interoperability of genomic and phenotypic data were assessed in the current publication, aiming to make this panel publicly available as a resource for future genetic research in barley.

The raw phenotypic data as well as the ready-to-use phenotypic values (BLUEs), and the R script to import and curate the raw phenotypic data to compute heritability and BLUEs are available in the e!DAL-PGP Repository (doi: 10.5447/IPK/2024/7); Variant calling results based on read mapping against the reference sequence of MorexV3 were stored as Variant Call Format (VCF). All the VCF files are located at the European Nucleotide Archive under the project number PRJEB80159.

### filtering for the raw vcf file.txt

This file serves as the filtration process code of the raw vcf file submitted to European Nucleotide Archive under the project number PRJEB53924, including:
* the filtration of minor allele frequency and missing value
* marker pruning based on linkage disequilibrium
* imputation by Beagle

as well as the population structure analysis by admixture based on the filtered genotypic data

(The filtering criteria can be changed depending on the different research topic)

### mantel_test.R

It contains the R script for conducting the mantel test 

### cross-validation.R

It contains the R script for five-fold cross-validation, and the script to generate the plot.

### plot_admixture.R

It contains the R script for generating the admixture plot
