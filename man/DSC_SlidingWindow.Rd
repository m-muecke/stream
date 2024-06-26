% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/DSC_SlidingWindow.R
\name{DSC_SlidingWindow}
\alias{DSC_SlidingWindow}
\title{DSC_SlidingWindow -- Data Stream Clusterer Using a Sliding Window}
\usage{
DSC_SlidingWindow(formula = NULL, model = DSC_Kmeans, window, rebuild, ...)
}
\arguments{
\item{formula}{a formula for the classification problem.}

\item{model}{regression model (that has a formula interface).}

\item{window}{size of the sliding window.}

\item{rebuild}{interval (number of points) for rebuilding the regression. Set rebuild to
\code{Inf} to prevent automatic rebuilding. Rebuilding can be initiated manually when
calling \code{update()}.}

\item{...}{additional parameters are passed on to the clusterer (default is \link{DSC_Kmeans}).}
}
\value{
An object of class \code{DST_SlidingWindow}.
}
\description{
The clusterer keeps a sliding window for the stream and rebuilds a DSC clustering model at regular
intervals. By default is uses \link{DSC_Kmeans}. Other \link{DSC_Macro} clusterer can be used.
}
\details{
This constructor creates a clusterer based on \code{\link{DST_SlidingWindow}}. The clusterer has
a \code{update()} and \code{predict()} method.

The difference to setting up a \link{DSC_TwoStage} is that \code{DSC_SlidingWindow} rebuilds
the model in regular intervals, while \code{DSC_TwoStage} rebuilds the model on demand.
}
\examples{
library(stream)

stream <- DSD_Gaussians(k = 3, d = 2, noise = 0.05)

# define the stream clusterer.
cl <- DSC_SlidingWindow(
  formula = ~ . - `.class`,
  k = 3,
  window = 50,
  rebuild = 10
  )
cl

# update the clusterer with 100 points from the stream
update(cl, stream, 100)

# get the cluster model
cl$model$result

plot(cl$model$result)
}
\seealso{
Other DSC: 
\code{\link{DSC}()},
\code{\link{DSC_Macro}()},
\code{\link{DSC_Micro}()},
\code{\link{DSC_R}()},
\code{\link{DSC_Static}()},
\code{\link{DSC_TwoStage}()},
\code{\link{animate_cluster}()},
\code{\link{evaluate.DSC}},
\code{\link{get_assignment}()},
\code{\link{plot.DSC}()},
\code{\link{predict}()},
\code{\link{prune_clusters}()},
\code{\link{read_saveDSC}},
\code{\link{recluster}()}

Other DSC_Macro: 
\code{\link{DSC_DBSCAN}()},
\code{\link{DSC_EA}()},
\code{\link{DSC_Hierarchical}()},
\code{\link{DSC_Kmeans}()},
\code{\link{DSC_Macro}()},
\code{\link{DSC_Reachability}()}
}
\author{
Michael Hahsler
}
\concept{DSC}
\concept{DSC_Macro}
