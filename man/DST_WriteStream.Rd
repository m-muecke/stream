% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/DST_WriteStream.R
\name{DST_WriteStream}
\alias{DST_WriteStream}
\alias{close_stream.DST_WriteStream}
\title{Task to Write a Stream to a File or a Connection}
\usage{
DST_WriteStream(file, append = FALSE, ...)

\method{close_stream}{DST_WriteStream}(dsd, ...)
}
\arguments{
\item{file}{A file name or a R connection to be written to.}

\item{append}{Append the data to an existing file.}

\item{...}{further arguments are passed on to \code{\link[=write_stream]{write_stream()}}. Note that \code{close} is
always \code{FALSE} and cannot be specified.}

\item{dsd}{a \code{DSD_WriteStream} object with an open connection.}
}
\description{
Writes points from a data stream DSD object to a file or a connection.
}
\details{
\strong{Note:} \code{header = TRUE} is not supported for files. The header would be
added for every call for update.
}
\examples{
set.seed(1500)

stream <- DSD_Gaussians(k = 3, d = 2)
writer <- DST_WriteStream(file = "data.txt", info = TRUE)

update(writer, stream, n = 2)
readLines("data.txt")
update(writer, stream, n = 3)
readLines("data.txt")

# clean up
close_stream(writer)

file.remove("data.txt")
}
\seealso{
Other DST: 
\code{\link{DSAggregate}()},
\code{\link{DSC}()},
\code{\link{DSClassifier}()},
\code{\link{DSOutlier}()},
\code{\link{DSRegressor}()},
\code{\link{DST}()},
\code{\link{DST_SlidingWindow}()},
\code{\link{evaluate}},
\code{\link{predict}()},
\code{\link{stream_pipeline}},
\code{\link{update}()}
}
\author{
Michael Hahsler
}
\concept{DST}
