% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/DSD_mlbenchGenerator.R
\name{DSD_mlbenchGenerator}
\alias{DSD_mlbenchGenerator}
\title{mlbench Data Stream Generator}
\usage{
DSD_mlbenchGenerator(method, ...)
}
\arguments{
\item{method}{The name of the mlbench data generator. If missing then a list of
all available generators is shown and returned.}

\item{...}{Parameters for the mlbench data generator.}
}
\value{
Returns a \code{DSD_mlbenchGenerator} object (subclass of
\link{DSD_R}, \link{DSD})
}
\description{
A data stream generator class that interfaces data generators found in
package \code{mlbench}.
}
\details{
The \code{DSD_mlbenchGenerator} class is designed to be a wrapper class for
data created by data generators in the \code{mlbench} library.

Call \code{DSD_mlbenchGenerator} with missing method to get a list of
available methods.
}
\examples{
DSD_mlbenchGenerator()

stream <- DSD_mlbenchGenerator(method = "cassini")
stream

get_points(stream, n = 5)

plot(stream, n = 500)
}
\seealso{
Other DSD: 
\code{\link{DSD}()},
\code{\link{DSD_BarsAndGaussians}()},
\code{\link{DSD_Benchmark}()},
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
\code{\link{DSF}()},
\code{\link{animate_data}()},
\code{\link{close_stream}()},
\code{\link{get_points}()},
\code{\link{plot.DSD}()},
\code{\link{reset_stream}()}
}
\author{
John Forrest
}
\concept{DSD}
