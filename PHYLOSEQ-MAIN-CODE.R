library(phyloseq)
library(ggplot2)
library(dplyr)
library(vegan)
library(ape)
library(viridis)
library(tidyr)
library(scales)
library(RColorBrewer)

otu_mat <- read.csv("otu-table.csv", check.names = FALSE, row.names = 1)
tax_mat <- read.csv("taxonomy.csv", check.names = FALSE)
samples_df <- read.csv("metadata.csv", check.names = FALSE)

row.names(tax_mat) <- tax_mat$otu
tax_mat <- tax_mat %>% select (-otu)
row.names(samples_df) <- samples_df$sample
samples_df <- samples_df %>% select (-sample)
otu_mat <- as.matrix(otu_mat)
tax_mat <- as.matrix(tax_mat)

OTU = otu_table(otu_mat, taxa_are_rows = TRUE)
TAX = tax_table(tax_mat)
samples = sample_data(samples_df)

samples

#Phyloseq Object
ww <- phyloseq(OTU, TAX, samples)
ww

random_tree = rtree(ntaxa(ww), rooted=TRUE, tip.label=taxa_names(ww))

ww1 = merge_phyloseq(ww, sample, random_tree)
ww1





