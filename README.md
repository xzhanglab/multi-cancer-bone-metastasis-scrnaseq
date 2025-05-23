# <span style="font-size: 16px;">Single cell profiling of bone metastasis ecosystems from multiple cancer types reveals convergent and divergent mechanisms of bone colonization</span>

<span style="font-size: 12px;">
This repository provides instructions and code to reproduce the major results, numerics, and figures from the <a href="https://doi.org/10.1101/2024.05.07.593027"><b>manuscript</b></a>:
</span>

### <span style="font-size: 14px;">Citation</span>
<span style="font-size: 12px;">
Liu, F., Ding, Y., Xu, Z., Hao, X., Pan, T., Miles, G., Wu, Y.-H., Liu, J., Bado, I. L., Zhang, W., Wu, L., Gao, Y., Yu, L., Edwards, D. G., Chan, H. L., Aguirre, S., Dieffenbach, M. W., Chen, E., Shen, Y., Hoffman, D., Dominguez, L. B., Rivas, C. H., Chen, X., Wang, H., Gugala, Z., Satcher, R. L., & Zhang, X. H.-F. (2024). Single-cell profiling of bone metastasis ecosystems from multiple cancer types reveals convergent and divergent mechanisms of bone colonization. Cell Genomics https://doi.org/10.1016/j.xgen.2025.100888 
</span>

<br>

### <span style="font-size: 14px;">Data</span>
<span style="font-size: 12px;">
All intermediate data produced by running this code, as described below, are available for download on <a href="https://zenodo.org/uploads/14270977"><b>Zenodo</b></a>.
</span>

### <span style="font-size: 14px;">Overview</span>
<span style="font-size: 12px;">
These instructions will guide you through the following:
<br>
1. Processing individual Cell Ranger outputs to generate individual Seurat objects.  
<br>
2. Integrating datasets, applying batch correction, and reproducing analysis from the manuscript.  
<br>
3. Reproducing the results from analyzing integrated bulk/microarray datasets.  
<br>
</span>

<br>

| **File Name**                                    | **Description**                                                                 | **Related Figure**             |
|--------------------------------------------------|---------------------------------------------------------------------------------|--------------------------------|
| <span style="font-size: 12px;">01.batch_processing_for_individual_sample.R</span>      | <span style="font-size: 12px;">Process Cell Ranger outputs and generate individual Seurat objects</span>              | /                              |
| <span style="font-size: 12px;">02_integration_Seurat.v4_39_samples.Rmd</span>          | <span style="font-size: 12px;">Integration of the first batch (39 samples) as Seurat v4 assay</span>                  | /                              |
| <span style="font-size: 12px;">02_integration_Seurat.v5_47_samples.Rmd</span>          | <span style="font-size: 12px;">Integration of a total of 47 samples as Seurat v5 assay</span>                         | /                              |
| <span style="font-size: 12px;">03.scPred.Rmd</span>                                    | <span style="font-size: 12px;">Cell type prediction using scPred</span>                                              | Fig S1A-S1C; Table S2          |
| <span style="font-size: 12px;">04.analysis_in_python.ipynb</span>                      | <span style="font-size: 12px;">Figure generation</span>                                                              | Fig 1B-1F; Fig S1D-S1N; Fig 6A-6D |
| <span style="font-size: 12px;">05.Bulk_Microarray_RNA_Haideret al_PMID-26928463.Rmd</span> | <span style="font-size: 12px;">Analysis of bulk/microarray data from PMID:26928463</span>                             | /                              |
| <span style="font-size: 12px;">05.Bulk_Microarray_RNA_Priedigkeit et al_PMID-28878133.Rmd</span> | <span style="font-size: 12px;">Analysis of bulk/microarray data from PMID:28878133</span>                             | Fig 3D                         |
| <span style="font-size: 12px;">05.Bulk_Microarray_RNA_Sinn et al_PMID-31231679.Rmd</span> | <span style="font-size: 12px;">Analysis of bulk/microarray data from PMID:31231679</span>                             | Fig 3E, 3F                    |
| <span style="font-size: 12px;">06.inferCNV.Rmd</span>                                  | <span style="font-size: 12px;">InferCNV analysis</span>                                                              | Fig 5                          |
| <span style="font-size: 12px;">07.Pseudobulk_data_processing_for_DESeq2.Rmd</span>     | <span style="font-size: 12px;">Prepare DESeq2 object for DEG and pathway analysis</span>                              | /                              |
| <span style="font-size: 12px;">08.DESeq2_DEG_analysis.Rmd</span>                       | <span style="font-size: 12px;">DEG analysis</span>                                                                   | Table S5                       |
| <span style="font-size: 12px;">09.GSEA.Rmd</span>                                      | <span style="font-size: 12px;">Pathway enrichment from DEGs</span>                                                   | Table S5                       |
| <span style="font-size: 12px;">10.GSVA.Rmd</span>                                      | <span style="font-size: 12px;">GSVA analysis</span>                                                                  | Fig 6E; Table S6               |
| <span style="font-size: 12px;">11.Dynamo_trajectory.ipynb</span>                       | <span style="font-size: 12px;">Trajectory inference</span>                                                           | Fig 4; Fig S4; Table S4        |
| <span style="font-size: 12px;">12.CellChat.Rmd</span>                                  | <span style="font-size: 12px;">Cell-cell communication analysis</span>                                               | Fig 7A                         |
| <span style="font-size: 12px;">12.signaling pathway integrated_Figure_S5A.ipynb</span> | <span style="font-size: 12px;">Process cell-cell communication-derived data</span>                                   | Fig S5A; Table S3              |

---

## <span style="font-size: 14px;">Data file (from Zenodo)</span>

| Directory/File                      | Description                                                                 |
|-------------------------------------|-----------------------------------------------------------------------------|
| <span style="font-size: 12px;">Bulk_Microarray_Data(published)</span>     | <span style="font-size: 12px;">Published bulk RNA-seq or microarray data; and integrated data</span>             |
| <span style="font-size: 12px;">cell_count_from_IF_staining</span>         | <span style="font-size: 12px;">Cell count from IF staining for OC, Treg, and Tex cells</span>                    |
| <span style="font-size: 12px;">dynamo</span>                              | <span style="font-size: 12px;">Scanpy objects for major cell types, and loom files (integrated or subset by archetypes)</span> |
| <span style="font-size: 12px;">integrated_Seurat_objects</span>           | <span style="font-size: 12px;">Integrated, batch-corrected, annotated Seurat and Scanpy objects, subset by major metadata</span> |
| <span style="font-size: 12px;">scPred_data</span>                         | <span style="font-size: 12px;">Data of prediction probabilities and training dataset quality</span>              |
| <span style="font-size: 12px;">DESeq2_obj_archetype_comparsion</span>     | <span style="font-size: 12px;">DESeq2 objects used for comparing the major dominant cell type across archetypes (for GSVA analysis)</span> |
| <span style="font-size: 12px;">cellchat</span>                            | <span style="font-size: 12px;">CellChat objects and derived data for integrated plot</span>                      |
| <span style="font-size: 12px;">infercnv_data_for_analysis</span>          | <span style="font-size: 12px;">Data used for infercnv analysis, contains epithelium and reference stromal cells</span> |
| <span style="font-size: 12px;">msigdb_v2023.2.Hs_GMTs</span>              | <span style="font-size: 12px;">Pathway data from MsigDB, used for GSEA and GSVA analysis</span>                  |
| <span style="font-size: 12px;">scPred_training_data_processed</span>      | <span style="font-size: 12px;">Training dataset used for SVM-based cell type annotation</span>                   |
| <span style="font-size: 12px;">Supplimentary Tables</span>                | <span style="font-size: 12px;">Supplementary information and data</span>                                         |
| <span style="font-size: 12px;">cellranger_per_sample_outs</span>          | <span style="font-size: 12px;">CellRanger output</span>                                                          |
| <span style="font-size: 12px;">infercsv_outs</span>                       | <span style="font-size: 12px;">Infercnv analysis output</span>                                                   |
| <span style="font-size: 12px;">per_sample_seurat_objects</span>           | <span style="font-size: 12px;">Seurat object for each patient</span>                                             |

---

### <span style="font-size: 14px;">Prepared by Fengshuo Liu</span>
