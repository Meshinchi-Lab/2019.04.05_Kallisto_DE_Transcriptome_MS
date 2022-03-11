library(ggplot2)
library(ggfittext)
library(ggalluvial)
library(dplyr)
library(tibble)
library(rlang)

check_nondata_cols <- function(x) {
  idx <- (vapply(x, function(x) rlang::is_vector(x), logical(1)))
  names(x)[which(!idx)]
}

setwd('/Volumes/fh/workingDir/TARGET/AML_TARGET/RNA/mRNAseq/analysis/2019.04.05_Kallisto_DE_Transcriptome_MS/')

p <- readRDS("Fusion_Detection_Alluvial_plot.RDS")
p <- p + 
  theme(axis.text.x = element_text(size=26))


ggsave(plot=p, filename="Fusion_Detection_Alluvial_plot.png", device = "png", dpi=350,units="in", height = 10, width = 12)



