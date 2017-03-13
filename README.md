# stream - Infrastructure for Data Stream Mining - R package

[![CRAN version](http://www.r-pkg.org/badges/version/stream)](https://cran.r-project.org/package=stream)
[![CRAN RStudio mirror downloads](http://cranlogs.r-pkg.org/badges/stream)](https://cran.r-project.org/package=stream)
[![Travis-CI Build Status](https://travis-ci.org/mhahsler/stream.svg?branch=master)](https://travis-ci.org/mhahsler/stream)
[![AppVeyor Build Status](https://ci.appveyor.com/api/projects/status/github/mhahsler/stream?branch=master&svg=true)](https://ci.appveyor.com/project/mhahsler/stream)

A framework for data stream modeling and associated data mining tasks such as clustering and classification. The development of this package was supported in part by NSF IIS-0948893 and NIH R21HG005912.

Additional packages in the stream family are: 

* [streamMOA](http://github.com/mhahsler/streamMOA). 

## Installation

__Stable CRAN version:__ install from within R with
```R
install.packages("stream")
```
__Current development version:__ Download package from [AppVeyor](https://ci.appveyor.com/project/mhahsler/stream/build/artifacts) or install from GitHub (needs devtools).
```R 
install_git("mhahsler/stream")
```



## Usage

Load the package and create micro-clusters via sampling.

```R
library("stream")
stream <- DSD_Gaussians(k=3, noise=0)

sample <- DSC_Sample(k=20)
update(sample, stream, 500)
sample
```

```
Reservoir sampling
Class: DSC_Sample, DSC_Micro, DSC_R, DSC 
Number of micro-clusters: 20 
```

Recluster micro-clusters using k-means and plot results

```R
kmeans <- DSC_Kmeans(k=3)
recluster(kmeans, sample)
plot(kmeans, stream, type="both")
```

## References

* [stream package vignette](https://cran.r-project.org/package=stream/vignettes/stream.pdf) with complete examples.
* [stream reference manual](https://cran.r-project.org/package=stream/stream.pdf)
