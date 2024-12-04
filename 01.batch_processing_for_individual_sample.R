library(Seurat)
library(dplyr)
library(ggplot2)
library(readxl)

# Load Excel data in R (modify the path accordingly)
excel_data <- read_excel("./data/cellranger_per_sample_outs/sample_info.xlsx")

# Process each file
for (i in 1:nrow(excel_data)) {
  # Extract information for the current file
  dir_name <- excel_data$dir[i]
  cancer <- excel_data$cancer[i]
  cancer.id <- excel_data$cancer.id[i]
  patient.id <- as.character(excel_data$patient.id[i])
  replicate <- as.character(excel_data$replicate[i])
  gender <- excel_data$gender[i]
  Seq.ID <- excel_data$Seq.ID[i]
  tissue.origin <- excel_data$tissue.origin[i]
  barcodes <- as.character(excel_data$barcodes[i])
  
  # Construct the full path to the data directory
  data_dir <- paste0("./", dir_name, "/")
  
  # Load the dataset
  df.data <- Read10X(data.dir = data_dir)
  
  # Initialize the Seurat object
  df <- CreateSeuratObject(counts = df.data[["Gene Expression"]], project = dir_name, min.cells = 3, min.features = 200)
  
  # Metadata operations
  df$log10GenesPerUMI <- log10(df$nFeature_RNA) / log10(df$nCount_RNA)
  df$mitoRatio <- PercentageFeatureSet(object = df, pattern = "^MT-")
  df$mitoRatio <- df@meta.data$mitoRatio / 100
  
  # Update metadata
  df <- AddMetaData(df, metadata = list(cancer = cancer,
                                        cancer.id = cancer.id,
                                        patient.id = patient.id,
                                        replicate = replicate,
                                        gender = gender,
                                        Seq.ID = Seq.ID,
                                        tissue.origin = tissue.origin,
                                        barcodes = barcodes))
  
  # Quality control and normalization
  df <- subset(x = df, 
               subset= (nFeature_RNA >= 250) & 
                 (nFeature_RNA < 6000) &
                 (log10GenesPerUMI > 0.80) & 
                 (mitoRatio < 0.20))
  df[["percent.mt"]] <- PercentageFeatureSet(df, pattern = "^MT-")
  df <- NormalizeData(df, normalization.method = "LogNormalize", scale.factor = 10000)
  df <- FindVariableFeatures(df, selection.method = "vst", nfeatures = 2000)
  df <- SCTransform(df, vars.to.regress = "percent.mt", verbose = FALSE)
  
  # Principal component analysisc
  df <- RunPCA(df, features = VariableFeatures(object = df))
  
  # Clustering
  df <- FindNeighbors(df, dims = 1:20)
  df <- FindClusters(df, resolution = 0.5)
  
  # Run UMAP
  if ("umap-learn" %in% rownames(installed.packages())) {
    df <- RunUMAP(df, dims = 1:20)
  }
  
  # Save the processed Seurat object
  saveRDS(df, paste0('../individual_seurat_objs/', dir_name, '.rds'))
}
