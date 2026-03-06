# Single cell profiling of bone metastasis ecosystems from multiple cancer types reveals convergent and divergent mechanisms of bone colonization

Project website:  
[https://xzhanglab.github.io/multi-cancer-bone-metastasis-scrnaseq/](https://xzhanglab.github.io/multi-cancer-bone-metastasis-scrnaseq/)

This repository provides code and instructions to reproduce the major results, numerics, and figures from the published paper:

[Paper link](https://doi.org/10.1016/j.xgen.2025.100888)

## Data

All intermediate data produced by running this code are available on Zenodo:

[Zenodo download](https://zenodo.org/uploads/14270977)

## Overview

This repository supports reproduction of the following analyses:

1. Processing individual Cell Ranger outputs to generate individual Seurat objects.
2. Integrating datasets, applying batch correction, and reproducing analysis from the manuscript.
3. Reproducing results from integrated bulk and microarray datasets.

## Main analysis files

| File Name | Description | Related Figure |
|---|---|---|
| `01.batch_processing_for_individual_sample.R` | Process Cell Ranger outputs and generate individual Seurat objects | / |
| `02_integration_Seurat.v4_39_samples.Rmd` | Integration of the first batch (39 samples) as Seurat v4 assay | / |
| `02_integration_Seurat.v5_47_samples.Rmd` | Integration of 47 samples as Seurat v5 assay | / |
| `03.scPred.Rmd` | Cell type prediction using scPred | Fig S1A-S1C; Table S2 |
| `04.analysis_in_python.ipynb` | Figure generation | Fig 1B-1F; Fig S1D-S1N; Fig 6A-6D |
| `05.Bulk_Microarray_RNA_Haideret al_PMID-26928463.Rmd` | Analysis of PMID:26928463 bulk or microarray data | / |
| `05.Bulk_Microarray_RNA_Priedigkeit et al_PMID-28878133.Rmd` | Analysis of PMID:28878133 bulk or microarray data | Fig 3D |
| `05.Bulk_Microarray_RNA_Sinn et al_PMID-31231679.Rmd` | Analysis of PMID:31231679 bulk or microarray data | Fig 3E, 3F |
| `06.inferCNV.Rmd` | InferCNV analysis | Fig 5 |
| `07.Pseudobulk_data_processing_for_DESeq2.Rmd` | Prepare DESeq2 object for DEG and pathway analysis | / |
| `08.DESeq2_DEG_analysis.Rmd` | DEG analysis | Table S5 |
| `09.GSEA.Rmd` | Pathway enrichment from DEGs | Table S5 |
| `10.GSVA.Rmd` | GSVA analysis | Fig 6E; Table S6 |
| `11.Dynamo_trajectory.ipynb` | Trajectory inference | Fig 4; Fig S4; Table S4 |
| `12.CellChat.Rmd` | Cell-cell communication analysis | Fig 7A |
| `12.signaling pathway integrated_Figure_S5A.ipynb` | Process cell-cell communication-derived data | Fig S5A; Table S3 |

## Data files from Zenodo

| Directory or File | Description |
|---|---|
| `Bulk_Microarray_Data(published)` | Published bulk RNA-seq or microarray data and integrated data |
| `cell_count_from_IF_staining` | Cell counts from IF staining for OC, Treg, and Tex cells |
| `dynamo` | Scanpy objects for major cell types and loom files |
| `integrated_Seurat_objects` | Integrated, batch-corrected, annotated Seurat and Scanpy objects |
| `scPred_data` | Prediction probabilities and training dataset quality |
| `DESeq2_obj_archetype_comparsion` | DESeq2 objects for archetype comparison used in GSVA |
| `cellchat` | CellChat objects and derived data |
| `infercnv_data_for_analysis` | Data used for inferCNV analysis |
| `msigdb_v2023.2.Hs_GMTs` | MSigDB pathway data used for GSEA and GSVA |
| `scPred_training_data_processed` | Training dataset for SVM-based cell type annotation |
| `Supplimentary Tables` | Supplementary information and data |
| `cellranger_per_sample_outs` | Cell Ranger outputs |
| `infercsv_outs` | inferCNV analysis outputs |
| `per_sample_seurat_objects` | Per-sample Seurat objects |

Prepared by Fengshuo Liu
