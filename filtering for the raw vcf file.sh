1. Filter vcf files by minor allele frequency and missing rate：

./plink --vcf input_file --geno 0.1 --maf 0.05 --out output_file_name --recode vcf-iid  --allow-extra-chr --set-missing-var-ids @:# --keep-allele-order --double-id

2. Linkage disequilibrium based SNP pruning: 

./plink -vcf input_file --indep-pairwise 50 10 0.2 --out output_file_name --allow-extra-chr --set-missing-var-ids @:# --keep-allele-order --double-id

3. Imputation

./java -Xss512m -Xmx300g -jar ./beagle.29May21.d6d.jar nthreads=50 gt=input_file out=output_file_name

4. ADMIXTURE

./admixture --cv input_file_name.bed component_number > output_file_name
