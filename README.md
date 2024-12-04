# Single cell profiling of bone metastasis ecosystems from multiple cancer types reveals convergent and divergent mechanisms of bone colonization

This repository provides instructions and code to reproduce the major results, numerics, and figures from the [manuscript](https://doi.org/10.1101/2024.05.07.593027):

### Citation
Liu, F., Ding, Y., Xu, Z., Hao, X., Pan, T., Miles, G., Wu, Y.-H., Liu, J., Bado, I. L., Zhang, W., Wu, L., Gao, Y., Yu, L., Edwards, D. G., Chan, H. L., Aguirre, S., Dieffenbach, M. W., Chen, E., Shen, Y., Hoffman, D., Dominguez, L. B., Rivas, C. H., Chen, X., Wang, H., Gugala, Z., Satcher, R. L., & Zhang, X. H.-F. (2024). Single-cell profiling of bone metastasis ecosystems from multiple cancer types reveals convergent and divergent mechanisms of bone colonization. bioRxiv. https://doi.org/10.1101/2024.05.07.593027

All intermediate data produced by running this code, as described below, are [archived on Zenodo](https://zenodo.org/uploads/14270977).  

### Overview
These instructions will guide you through the following:
1. Processing individual Cell Ranger outputs to generate individual Seurat objects.  
2. Integrating datasets, applying batch correction, and reproducing analysis from the manuscript.  
3. Reproducing the results from analyzing integrated bulk/microarray datasets.  

---

## Code and Related Figures

| **File Name**                                    | **Description**                                                                 | **Related Figure**             |
|--------------------------------------------------|---------------------------------------------------------------------------------|--------------------------------|
| 01.batch_processing_for_individual_sample.R      | Process Cell Ranger outputs and generate individual Seurat objects              | /                              |
| 02_integration_Seurat.v4_39_samples.Rmd          | Integration of the first batch (39 samples) as Seurat v4 assay                  | /                              |
| 02_integration_Seurat.v5_47_samples.Rmd          | Integration of a total of 47 samples as Seurat v5 assay                         | /                              |
| 03.scPred.Rmd                                    | Cell type prediction using scPred                                              | Fig S1A-S1C; Table S2          |
| 04.analysis_in_python.ipynb                      | Figure generation                                                              | Fig 1B-1F; Fig S1D-S1N; Fig 6A-6D |
| 05.Bulk_Microarray_RNA_Haideret al_PMID-26928463.Rmd | Analysis of bulk/microarray data from PMID:26928463                             | /                              |
| 05.Bulk_Microarray_RNA_Priedigkeit et al_PMID-28878133.Rmd | Analysis of bulk/microarray data from PMID:28878133                             | Fig 3D                         |
| 05.Bulk_Microarray_RNA_Sinn et al_PMID-31231679.Rmd | Analysis of bulk/microarray data from PMID:31231679                             | Fig 3E, 3F                    |
| 05.Bulk_Microarray_RNA_Ylitalo et al_PMID-34193246.Rmd | Analysis of bulk/microarray data from PMID:34193246                             | /                              |
| 05.Bulk_Microarray_RNA_Zhang et al_PMID-19573813.Rmd | Analysis of bulk/microarray data from PMID:19573813                             | /                              |
| 05.Bulk_Microarray_RNA_integration_and_batch_correction.Rmd | Integrating all bulk/microarray data, applying batch correction, and analysis    | Fig 3B, 3C; Fig S3A           |
| 06.inferCNV.Rmd                                  | InferCNV analysis                                                              | Fig 5                          |
| 07.Pseudobulk_data_processing_for_DESeq2.Rmd     | Prepare DESeq2 object for DEG and pathway analysis                              | /                              |
| 08.DESeq2_DEG_analysis.Rmd                       | DEG analysis                                                                   | Table S5                       |
| 09.GSEA.Rmd                                      | Pathway enrichment from DEGs                                                   | Table S5                       |
| 10.GSVA.Rmd                                      | GSVA analysis                                                                  | Fig 6E; Table S6               |
| 11.Dynamo_trajectory.ipynb                       | Trajectory inference                                                           | Fig 4; Fig S4; Table S4        |
| 12.CellChat.Rmd                                  | Cell-cell communication analysis                                               | Fig 7A                         |
| 12.signaling pathway integrated_Figure_S5A.ipynb | Process cell-cell communication-derived data                                   | Fig S5A; Table S3              |

---

## Data file (from Zenodo) 

| Directory/File                      | Description                                                                 |
|-------------------------------------|-----------------------------------------------------------------------------|
| Bulk_Microarray_Data(published)     | Published bulk RNA-seq or microarray data; and integrated data             |
| cell_count_from_IF_staining         | Cell count from IF staining for OC, Treg, and Tex cells                    |
| dynamo                              | Scanpy objects for major cell types, and loom files (integrated or subset by archetypes) |
| integrated_Seurat_objects           | Integrated, batch-corrected, annotated Seurat and Scanpy objects, subset by major metadata |
| scPred_data                         | Data of prediction probabilities and training dataset quality              |
| DESeq2_obj_archetype_comparsion     | DESeq2 objects used for comparing the major dominant cell type across archetypes (for GSVA analysis) |
| cellchat                            | CellChat objects and derived data for integrated plot                      |
| infercnv_data_for_analysis          | Data used for infercnv analysis, contains epithelium and reference stromal cells |
| msigdb_v2023.2.Hs_GMTs              | Pathway data from MsigDB, used for GSEA and GSVA analysis                  |
| scPred_training_data_processed      | Training dataset used for SVM-based cell type annotation                   |
| Supplimentary Tables                | Supplementary information and data                                         |
| cellranger_per_sample_outs          | CellRanger output                                                          |
| infercsv_outs                       | Infercnv analysis output                                                   |
| per_sample_seurat_objects           | Seurat object for each patient                                             |

---
### Prepared by Fengshuo Liu
---
