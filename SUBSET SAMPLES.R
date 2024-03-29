#R Script used to subset samples
#Input from the Phyloseq Main Code File

#Subset Samples

year17 <- subset_samples(ww1, Year=="Year_2017-18")


#PLANTS

allGroupsColors<- c(
  "grey0", "red", "darkorchid",
  "deeppink", "gold4")

png("Alpha Diversity - Plants - Year 2017-18.png",
    width = 18*300,
    height = 18*300,
    res = 600,
    pointsize = 12)
plot_richness(year, x="Plant", color = "Plant", measures = c("Shannon", "Chao1", "ACE", "Simpson")) +
  geom_boxplot() + ggtitle("Alpha Diversity for the years 2017-2018") + scale_color_manual(values = allGroupsColors)

dev.off()

#LOCATION

allGroupsColors<- c(
  "grey0", "red", "darkorchid",
  "deeppink", "gold4", "darkslateblue", "orangered")

png("Alpha Diversity - Location - Year 2017-18.png",
    width = 18*300,
    height = 18*300,
    res = 600,
    pointsize = 12)
plot_richness(year, x="Location", color = "Location", measures = c("Shannon", "Chao1", "ACE", "Simpson")) +
  geom_boxplot() + ggtitle("Alpha Diversity for the years 2017-2018") + scale_color_manual(values = allGroupsColors)
dev.off()

#Subset Samples

year21 <- subset_samples(ww1, Year=="Year_2021")

#PLANTS

allGroupsColors<- c(
  "grey0", "red", "darkorchid",
  "deeppink", "gold4")

png("Alpha Diversity - Plants - Year 2021.png",
    width = 18*300,
    height = 18*300,
    res = 600,
    pointsize = 12)
plot_richness(year21, x="Plant", color = "Plant", measures = c("Shannon", "Chao1", "ACE", "Simpson")) +
  geom_boxplot() + ggtitle("Alpha Diversity for the year 2021") + scale_color_manual(values = allGroupsColors)

dev.off()


#LOCATION

allGroupsColors<- c(
  "grey0", "red", "darkorchid",
  "deeppink", "gold4", "darkslateblue", "orangered")

png("Alpha Diversity - Location - Year 2021.png",
    width = 18*300,
    height = 18*300,
    res = 600,
    pointsize = 12)
plot_richness(year21, x="Location", color = "Location", measures = c("Shannon", "Chao1", "ACE", "Simpson")) +
  geom_boxplot() + ggtitle("Alpha Diversity for the year 2021") + scale_color_manual(values = allGroupsColors)
dev.off()


#BETA DIVERSITY

#PCA Plot Without labels - Plants

ww.ord <- ordinate(year17, "PCoA", "unifrac")
ww.ord

allGroupsColors<- c(
  "grey0", "red", "darkorchid",
  "deeppink", "gold4", "darkslateblue", "orangered")

png("Unweighted Unifrac - Plants - Year 2017-18.png",
    width = 12*300,
    height = 12*300,
    res = 600,
    pointsize = 12)
ordplot <- plot_ordination(year17, ww.ord, type = "samples", color = "Plant",
                           title = "Unweighted Unifrac - Plants - Years 2017-2018") + geom_point() + scale_color_manual(values = allGroupsColors)

ordplot +
  stat_ellipse(type = "norm", linetype = 2) +
  scale_color_manual(values = allGroupsColors)
dev.off()


#PCA Plot Without labels - Location

ww.ord <- ordinate(year17, "PCoA", "unifrac")
ww.ord

allGroupsColors<- c(
  "grey0", "red", "darkorchid",
  "deeppink", "gold4", "darkslateblue", "orangered")

png("Unweighted Unifrac - Location - Year 2017-18.png",
    width = 12*300,
    height = 12*300,
    res = 600,
    pointsize = 12)
ordplot <- plot_ordination(year17, ww.ord, type = "samples", color = "Location",
                           title = "Unweighted Unifrac - Location - Years 2017-2018") + geom_point() + scale_color_manual(values = allGroupsColors)

ordplot +
  stat_ellipse(type = "norm", linetype = 2) +
  scale_color_manual(values = allGroupsColors)
dev.off()
