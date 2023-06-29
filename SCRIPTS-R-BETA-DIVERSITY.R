#R Script used to perform Beta Diversity analysis
#Input from the Phyloseq Main Code file

#PCA
ww.ord <- ordinate(ww1, "PCoA", "unifrac")
ww.ord

#PCA Plot With labels

allGroupsColors<- c(
  "grey0", "red", "darkorchid",
  "deeppink", "gold4", "darkslateblue", "orangered")

png("Unweighted Unifrac - Plants - Labels.png",
    width = 12*300,
    height = 12*300,
    res = 600,
    pointsize = 12)
ordplot <- plot_ordination(ww1, ww.ord, type = "samples", color = "Plant", label = "SampleName",
                           title = "Unweighted Unifrac") + geom_point() + scale_color_manual(values = allGroupsColors)

ordplot +
  stat_ellipse(type = "norm", linetype = 2) +
  scale_color_manual(values = allGroupsColors)
dev.off()



#PCA Plot Without labels - Plants

ww.ord <- ordinate(ww1, "PCoA", "unifrac")
ww.ord

allGroupsColors<- c(
  "grey0", "red", "darkorchid",
  "deeppink", "gold4", "darkslateblue", "orangered")

png("Unweighted Unifrac - Plants.png",
    width = 12*300,
    height = 12*300,
    res = 600,
    pointsize = 12)
ordplot <- plot_ordination(ww1, ww.ord, type = "samples", color = "Plant",
                           title = "Unweighted Unifrac - Plants") + geom_point() + scale_color_manual(values = allGroupsColors)

ordplot +
  stat_ellipse(type = "norm", linetype = 2) +
  scale_color_manual(values = allGroupsColors)
dev.off()


ww.ord <- ordinate(ww1, "PCoA", "wunifrac")
ww.ord

allGroupsColors<- c(
  "grey0", "red", "darkorchid",
  "deeppink", "gold4", "darkslateblue", "orangered")

png("weighted Unifrac - Plants.png",
    width = 12*300,
    height = 12*300,
    res = 600,
    pointsize = 12)
ordplot <- plot_ordination(ww1, ww.ord, type = "samples", color = "Plant",
                           title = "Weighted Unifrac - Plants") + geom_point() + scale_color_manual(values = allGroupsColors)

ordplot +
  stat_ellipse(type = "norm", linetype = 2) +
  scale_color_manual(values = allGroupsColors)
dev.off()


#PCA Plot Without labels - Location

ww.ord <- ordinate(ww1, "PCoA", "unifrac")
ww.ord

allGroupsColors<- c(
  "grey0", "red", "darkorchid",
  "deeppink", "gold4", "darkslateblue", "orangered")

png("Unweighted Unifrac - Location.png",
    width = 12*300,
    height = 12*300,
    res = 600,
    pointsize = 12)
ordplot <- plot_ordination(ww1, ww.ord, type = "samples", color = "Location",
                           title = "Unweighted Unifrac - Location") + geom_point() + scale_color_manual(values = allGroupsColors)

ordplot +
  stat_ellipse(type = "norm", linetype = 2) +
  scale_color_manual(values = allGroupsColors)
dev.off()


#PCA Plot Without labels - Year

ww.ord <- ordinate(ww1, "PCoA", "unifrac")
ww.ord

allGroupsColors<- c(
  "grey0", "red", "darkorchid",
  "deeppink", "gold4", "darkslateblue", "orangered")

png("Unweighted Unifrac - Year.png",
    width = 12*300,
    height = 12*300,
    res = 600,
    pointsize = 12)
ordplot <- plot_ordination(ww1, ww.ord, type = "samples", color = "Year",
                           title = "Unweighted Unifrac - Year") + geom_point() + scale_color_manual(values = allGroupsColors)

ordplot +
  stat_ellipse(type = "norm", linetype = 2) +
  scale_color_manual(values = allGroupsColors)
dev.off()




