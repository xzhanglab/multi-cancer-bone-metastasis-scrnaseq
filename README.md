# Single-cell profiling of bone metastasis ecosystems from multiple cancer types reveals convergent and divergent mechanisms of bone colonization

## Project website

[https://xzhanglab.github.io/multi-cancer-bone-metastasis-scrnaseq/](https://xzhanglab.github.io/multi-cancer-bone-metastasis-scrnaseq/)

## Paper

This repository provides code and instructions to reproduce the major analyses, numerical results, and figures from the published paper:

[Single-cell profiling of bone metastasis ecosystems from multiple cancer types reveals convergent and divergent mechanisms of bone colonization](https://doi.org/10.1016/j.xgen.2025.100888)

## Data

All intermediate data produced by this repository are available on Zenodo:

[Zenodo download](https://doi.org/10.5281/zenodo.14270976)

## Media coverage

<table>
<tr>
<td width="50%" align="center" valign="top">
<a href="https://www.bcm.edu/news/single-cell-rna-sequencing-of-bone-metastases-reveals-distinct-immune-archetypes">
<img src="https://www.bcm.edu/sites/default/files/2025-05/bone-metastasis-scRNA.jpg" width="95%">
</a>
<br><br>
<b>BCM News</b><br>
Single-cell RNA sequencing of bone metastases reveals distinct immune archetypes
</td>

<td width="50%" align="center" valign="top">
<a href="https://blogs.bcm.edu/2025/06/19/from-the-labs-study-reveals-heterogeneity-of-bone-metastases-across-different-and-same-cancer-types/">
<img src="https://blogs.bcm.edu/wp-content/uploads/2025/06/bone-metastasis-scRNA.png" width="95%">
</a>
<br><br>
<b>From the Labs | BCM Blog</b><br>
Study reveals heterogeneity of bone metastases across different and same cancer types
</td>
</tr>
</table>

## Overview

This repository supports reproduction of the following analyses:

1. Processing individual Cell Ranger outputs to generate per-sample Seurat objects.
2. Integrating datasets, performing batch correction, and reproducing analyses from the manuscript.
3. Reproducing results from integrated bulk RNA-seq and microarray datasets.

## Main analysis files

| File name | Description | Related figure |
|---|---|---|
| `01.batch_processing_for_individual_sample.R` | Process Cell Ranger outputs and generate individual Seurat objects | / |
| `02_integration_Seurat.v4_39_samples.Rmd` | Integration of the first batch (39 samples) as a Seurat v4 assay | / |
| `02_integration_Seurat.v5_47_samples.Rmd` | Integration of 47 samples as a Seurat v5 assay | / |
| `03.scPred.Rmd` | Cell type prediction using scPred | Fig. S1A-S1C; Table S2 |
| `04.analysis_in_python.ipynb` | Figure generation | Fig. 1B-1F; Fig. S1D-S1N; Fig. 6A-6D |
| `05.Bulk_Microarray_RNA_Haideret al_PMID-26928463.Rmd` | Analysis of bulk RNA-seq or microarray data from PMID:26928463 | / |
| `05.Bulk_Microarray_RNA_Priedigkeit et al_PMID-28878133.Rmd` | Analysis of bulk RNA-seq or microarray data from PMID:28878133 | Fig. 3D |
| `05.Bulk_Microarray_RNA_Sinn et al_PMID-31231679.Rmd` | Analysis of bulk RNA-seq or microarray data from PMID:31231679 | Fig. 3E, Fig. 3F |
| `06.inferCNV.Rmd` | inferCNV analysis | Fig. 5 |
| `07.Pseudobulk_data_processing_for_DESeq2.Rmd` | Preparation of DESeq2 objects for DEG and pathway analyses | / |
| `08.DESeq2_DEG_analysis.Rmd` | DEG analysis | Table S5 |
| `09.GSEA.Rmd` | Pathway enrichment analysis from DEGs | Table S5 |
| `10.GSVA.Rmd` | GSVA analysis | Fig. 6E; Table S6 |
| `11.Dynamo_trajectory.ipynb` | Trajectory inference | Fig. 4; Fig. S4; Table S4 |
| `12.CellChat.Rmd` | Cell-cell communication analysis | Fig. 7A |
| `12.signaling pathway integrated_Figure_S5A.ipynb` | Processing of cell-cell communication-derived data | Fig. S5A; Table S3 |

## Data files from Zenodo

| Directory or file | Description |
|---|---|
| `Bulk_Microarray_Data(published)` | Published bulk RNA-seq or microarray datasets and integrated data |
| `cell_count_from_IF_staining` | Cell counts from IF staining for osteoclasts, Treg cells, and exhausted T cells |
| `dynamo` | Scanpy objects for major cell types and loom files |
| `integrated_Seurat_objects` | Integrated, batch-corrected, and annotated Seurat and Scanpy objects |
| `scPred_data` | Prediction probabilities and training dataset quality metrics |
| `DESeq2_obj_archetype_comparsion` | DESeq2 objects for archetype comparisons used in GSVA |
| `cellchat` | CellChat objects and derived data |
| `infercnv_data_for_analysis` | Data used for inferCNV analysis |
| `msigdb_v2023.2.Hs_GMTs` | MSigDB pathway collections used for GSEA and GSVA |
| `scPred_training_data_processed` | Training dataset for SVM-based cell type annotation |
| `Supplimentary Tables` | Supplementary information and associated data |
| `cellranger_per_sample_outs` | Cell Ranger outputs for each sample |
| `infercsv_outs` | inferCNV analysis outputs |
| `per_sample_seurat_objects` | Per-sample Seurat objects |

## Contact

Prepared by **Fengshuo Liu**
