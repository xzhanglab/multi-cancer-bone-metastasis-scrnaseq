# Single cell profiling of bone metastasis ecosystems from multiple cancer types reveals convergent and divergent mechanisms of bone colonization

This repository provides instructions and code to reproduce the major results, numerics, and figures from the [manuscript](https://doi.org/10.1101/2024.05.07.593027):

### Citation
**Title**: Single cell profiling of bone metastasis ecosystems from multiple cancer types reveals convergent and divergent mechanisms of bone colonization  
**Authors**: Fengshuo Liu, Yunfeng Ding, Zhan Xu, Xiaoxin Hao, Tianhong Pan, George Miles, Yi-Hsuan Wu, Jun Liu, Igor L. Bado, Weijie Zhang, Ling Wu, Yang Gao, Liqun Yu, David G. Edwards, Hilda L. Chan, Sergio Aguirre, Michael Warren Dieffenbach, Elina Chen, Yichao Shen, Dane Hoffman, Luis Becerra Dominguez, Charlotte Helena Rivas, Xiang Chen, Hai Wang, Zbigniew Gugala, Robert L. Satcher, Xiang H.-F. Zhang  
**DOI**: [10.1101/2024.05.07.593027](https://doi.org/10.1101/2024.05.07.593027)  

All intermediate data produced by running this code, as described below, are [archived on Zenodo](https://zenodo.org/).  

### Overview
These instructions will guide you through the following:
1. Processing individual Cell Ranger outputs to generate individual Seurat objects.  
2. Integrating datasets, applying batch correction, and reproducing analysis from the manuscript.  
3. Reproducing the results from analyzing integrated bulk/microarray datasets.  

---

## Code Explanation and Related Figures

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

## Prepared by
Fengshuo Liu

---