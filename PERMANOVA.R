#R Script used to perform PERMANOVA analysis
#Inputs from the Phyloseq Main Code file

#PERMANOVA
bray_dist = phyloseq::distance(ww1, method="unifrac")
res_ado <- adonis(bray_dist ~ sample_data(ww1)$Plant)

write.table(res_ado, "adonis_plants_unifrac.csv")


#ANOSIM
ww_ano = get_variable(ww1, "Plant")
ww_ano = anosim(distance(ww1, "unifrac"), ww_ano)
ww_ano



pairwise.perm.manova(resp, ww1, test = c("Plant A", "Plant B",
  "Plant C", "Plant I", "Plant J"), nperm = 999, 
  progress = TRUE, p.method = "fdr", F = FALSE, R2 = FALSE)
