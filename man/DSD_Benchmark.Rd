% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/DSD_Benchmarks.R
\name{DSD_Benchmark}
\alias{DSD_Benchmark}
\title{Data Stream Generator for Dynamic Data Stream Benchmarks}
\usage{
DSD_Benchmark(i = 1)
}
\arguments{
\item{i}{integer; the number of the benchmark.}
}
\value{
Returns a \link{DSD} object.
}
\description{
A data stream generator that generates several dynamic streams indented to
be benchmarks to compare data stream clustering algorithms.  The benchmarks
can be used to test if a clustering algorithm can follow moving clusters, and merging and
separating clusters.
}
\details{
Currently available benchmarks are:
\itemize{
\item \code{1}: two tight clusters moving across the data space with noise and intersect in the middle.
\item \code{2}: two clusters are located in two corners of the data space. A third cluster moves between the two clusters
forth and back.
}

The benchmarks are created using \link{DSD_MG}.
}
\examples{
stream <- DSD_Benchmark(i = 1)
get_points(stream, n = 5)

\dontrun{
stream <- DSD_Benchmark(i = 1)
animate_data(stream, n = 10000, horizon = 100, xlim = c(0, 1), ylim = c(0, 1))

stream <- DSD_Benchmark(i = 2)
animate_data(stream, n = 10000, horizon = 100, xlim = c(0, 1), ylim = c(0, 1))
}
}
\seealso{
Other DSD: 
\code{\link{DSD}()},
\code{\link{DSD_BarsAndGaussians}()},
\code{\link{DSD_Cubes}()},
\code{\link{DSD_Gaussians}()},
\code{\link{DSD_MG}()},
\code{\link{DSD_Memory}()},
\code{\link{DSD_Mixture}()},
\code{\link{DSD_NULL}()},
\code{\link{DSD_ReadDB}()},
\code{\link{DSD_ReadStream}()},
\code{\link{DSD_Target}()},
\code{\link{DSD_UniformNoise}()},
\code{\link{DSD_mlbenchData}()},
\code{\link{DSD_mlbenchGenerator}()},
\code{\link{DSF}()},
\code{\link{animate_data}()},
\code{\link{close_stream}()},
\code{\link{get_points}()},
\code{\link{plot.DSD}()},
\code{\link{reset_stream}()}
}
\author{
Michael Hahsler
}
\concept{DSD}
