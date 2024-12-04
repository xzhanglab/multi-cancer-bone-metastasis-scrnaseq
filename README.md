# <span style="font-size: 16px;">Single cell profiling of bone metastasis ecosystems from multiple cancer types reveals convergent and divergent mechanisms of bone colonization</span>

<span style="font-size: 12px;">
This repository provides instructions and code to reproduce the major results, numerics, and figures from the [manuscript](https://doi.org/10.1101/2024.05.07.593027):
</span>

### <span style="font-size: 14px;">Citation</span>
<span style="font-size: 12px;">
Liu, F., Ding, Y., Xu, Z., Hao, X., Pan, T., Miles, G., Wu, Y.-H., Liu, J., Bado, I. L., Zhang, W., Wu, L., Gao, Y., Yu, L., Edwards, D. G., Chan, H. L., Aguirre, S., Dieffenbach, M. W., Chen, E., Shen, Y., Hoffman, D., Dominguez, L. B., Rivas, C. H., Chen, X., Wang, H., Gugala, Z., Satcher, R. L., & Zhang, X. H.-F. (2024). Single-cell profiling of bone metastasis ecosystems from multiple cancer types reveals convergent and divergent mechanisms of bone colonization. bioRxiv. https://doi.org/10.1101/2024.05.07.593027
</span>

<span style="font-size: 12px;">
All intermediate data produced by running this code, as described below, are [archived on Zenodo](https://zenodo.org/uploads/14270977).  
</span>

### <span style="font-size: 14px;">Overview</span>
<span style="font-size: 12px;">
These instructions will guide you through the following:
1. Processing individual Cell Ranger outputs to generate individual Seurat objects.  
2. Integrating datasets, applying batch correction, and reproducing analysis from the manuscript.  
3. Reproducing the results from analyzing integrated bulk/microarray datasets.  
</span>

---

## <span style="font-size: 14px;">Code and Related Figures</span>

| **File Name**                                    | **Description**                                                                 | **Related Figure**             |
|--------------------------------------------------|---------------------------------------------------------------------------------|--------------------------------|
| <span style="font-size: 12px;">01.batch_processing_for_individual_sample.R</span>      | <span style="font-size: 12px;">Process Cell Ranger outputs and generate individual Seurat objects</span>              | /                              |
| <span style="font-size: 12px;">02_integration_Seurat.v4_39_samples.Rmd</span>          | <span style="font-size: 12px;">Integration of the first batch (39 samples) as Seurat v4 assay</span>                  | /                              |
| <span style="font-size: 12px;">...</span>        | ...                                                                             | ...                            |

---

## <span style="font-size: 14px;">Data file (from Zenodo)</span>

| Directory/File                      | Description                                                                 |
|-------------------------------------|-----------------------------------------------------------------------------|
| <span style="font-size: 12px;">Bulk_Microarray_Data(published)</span>     | <span style="font-size: 12px;">Published bulk RNA-seq or microarray data; and integrated data</span>             |
| <span style="font-size: 12px;">cell_count_from_IF_staining</span>         | <span style="font-size: 12px;">Cell count from IF staining for OC, Treg, and Tex cells</span>                    |
| <span style="font-size: 12px;">...</span> | ... | ... |

---

### <span style="font-size: 14px;">Prepared by Fengshuo Liu</span>
