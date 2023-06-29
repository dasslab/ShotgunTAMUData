#R Script used to generate Heatmaps
#Input 
data <- read.csv("input.csv", check.names = FALSE)
rnames <- data[,1]
mat_data <- data.matrix(data[,2:n])
rownames(mat_data) <- rnames

#Color Profile
my_palette <- colorRampPalette(c("steelblue4", "lightgoldenrod1", "red3"))(n = 299)

#HEATMAP
# creates a 5 x 5 inch image
png("Image-title.png",    # create PNG for the heat map
    width = 10*300,        # 5 x 300 pixels
    height = 10*300,
    res = 300,            # 300 pixels per inch
    pointsize = 8)        # smaller font size
pheatmap(mat_data,
         density.info="none",
         trace="none",
         cluster_cols = TRUE,
         cluster_rows = TRUE,
         margins =c(8,10),
	treeheight_row=0,
	treeheight_col=0,
         Colv="NA",
         col = my_palette,
         cexRow=1,
         sepwidth=c(0.01,0.01),
         border_color="black",
         lhei = c(2,1),
         lwid = c(2,2),
         cellwidth = 30,
         cellheight = 15,
         main = "Title",
         colsep=1:ncol(mat_data),
         display_numbers = FALSE,
         number_format = "%.3f",
         number_color = "gray0",
         rowsep=1:nrow(mat_data))
dev.off()
