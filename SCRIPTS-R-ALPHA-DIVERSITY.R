#R Script used to perform Alpha Diversity analysis
#Input from the Phyloseq Main Code file

#Alpha Diversity

#PLANTS

allGroupsColors<- c(
  "grey0", "red", "darkorchid",
  "deeppink", "gold4")

png("Alpha Diversity.png",
    width = 18*300,
    height = 18*300,
    res = 600,
    pointsize = 12)
plot_richness(ww1, x="Plant", color = "Plant", measures = c("Shannon", "Chao1", "ACE", "Simpson")) +
  geom_boxplot() + ggtitle("Alpha Diversity") + scale_color_manual(values = allGroupsColors)

dev.off()

#LOCATION

allGroupsColors<- c(
  "grey0", "red", "darkorchid",
  "deeppink", "gold4", "darkslateblue", "orangered")

png("Alpha Diversity - Location.png",
    width = 18*300,
    height = 18*300,
    res = 600,
    pointsize = 12)
plot_richness(ww1, x="Location", color = "Location", measures = c("Shannon", "Chao1", "ACE", "Simpson")) +
  geom_boxplot() + ggtitle("Alpha Diversity") + scale_color_manual(values = allGroupsColors)
dev.off()

#YEAR

allGroupsColors<- c(
  "grey0", "red", "darkorchid",
  "deeppink", "gold4", "darkslateblue", "orangered")

png("Alpha Diversity - Year.png",
    width = 18*300,
    height = 18*300,
    res = 600,
    pointsize = 12)
plot_richness(ww1, x="Year", color = "Year", measures = c("Shannon", "Chao1", "ACE", "Simpson")) +
  geom_boxplot() + ggtitle("Alpha Diversity") + scale_color_manual(values = allGroupsColors)
dev.off()



