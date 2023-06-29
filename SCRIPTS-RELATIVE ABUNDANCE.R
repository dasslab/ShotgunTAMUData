#R Script used to generate Relative Abundance Profiles
#Input from the Phyloseq Main Code file

prune_ww <- prune_taxa(taxa_sums(ww1) > 0, ww1)

top20 <- names(sort(taxa_sums(prune_ww), decreasing=TRUE)[1:50])
top20 #shows 20 results

glom_ww = tax_glom(prune_ww, taxrank = "Family")
trans_data = transform_sample_counts(glom_ww, function(x) x/sum(x))

data_prune = prune_taxa(top20, trans_data)
df = psmelt(data_prune)

df1 <- merge_samples(data_prune, "Plant")

df2 <- transform_sample_counts(df1, function(x) x / sum(x))

png("Family-Plants.png",
    width = 20*300,
    height = 20*300,
    res = 600,
    pointsize = 12)
plot_bar(df2, fill="Family", title = "Family-Plants") + geom_bar(aes(color=Family, fill=Family), colour = "black" , stat="identity", position="stack") + 
  scale_color_viridis(discrete = TRUE)
dev.off()








allGroupsColors<- c(
  "grey0", "red", "darkorchid",
  "deeppink", "gold4", "darkslateblue", "orangered", "azure", "aquamrine", "antiquewhite", "cyan", "chocolate1", "darkgrey")


prune.dat <- prune_taxa(taxa_sums(ww1) > 0, ww1)

top20 <- names(sort(taxa_sums(prune.dat), decreasing=TRUE)[1:50])
top20 #shows 20 results

dat.aglo = tax_glom(prune.dat, taxrank = "Family")
dat.trans = transform_sample_counts(dat.aglo, function(x) x/sum(x))

prune.dat.two = prune_taxa(top20, dat.trans)
dat.dataframe = psmelt(prune.dat.two)

ps1 <- merge_samples(prune.dat.two, "Plant")

ps2 <- transform_sample_counts(ps1, function(x) x / sum(x))

png("Family-Plants.png",
    width = 20*300,
    height = 20*300,
    res = 600,
    pointsize = 12)
plot_bar(ps2, fill="Family", title = "Family-Plants") + geom_bar(aes(color= scale_color_manual(values = allGroupsColors), fill=Family), colour = "black" , stat="identity", position="stack") 
dev.off()

