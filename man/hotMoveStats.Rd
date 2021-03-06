% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/hotMoveStats.R
\name{hotMoveStats}
\alias{hotMoveStats}
\title{hotMoveStats}
\usage{
hotMoveStats(x, y, z)
}
\arguments{
\item{x}{Region unique identifiers. Vector of class \emph{numeric}.}

\item{y}{Observation time. Object of class \emph{Date}.}

\item{z}{Individual identifier. Vector of class \emph{character}.}
}
\value{
A list.
}
\description{
{Segmentation and statistical analysis of the time spent by an animal within a geographical region.}
}
\details{
{For each unique region defined by \emph{x}, the function identifies unique temporal segments defined as periods
of consecutive days with observations. Then, for each region, the function uses the identified segments to report on the
minimum, maximum and mean time spent as well as the total amount of time spent within the region. Moreover, the function
provides a detailed report of each segment and informs on the corresponding sample indices. If \emph{z} is specified, the
function will in addition count the number of individuals found within each region and within each temporal segment. The
final output consists of:
\itemize{
\item{\emph{region.stats} - \emph{data.frame} with the distribution of samples per region.}
\item{\emph{segment.stats} - \emph{data.frame} with all temporal segments assigned to each region.}
\item{region.plot} - Plot describing the distribution of samples and recorded time per region.}}
}
\examples{
{

require(raster)

# reference data
data(longMove)

# extract regions
hm <- hotMove(longMove, 0.1)

# add new information to original shapefile
longMove@data <- cbind(longMove@data, hm$region.id)

# derive statistics
hm.region.stats <- hotMoveStats(hm$region.id, as.Date(longMove@data$timestamp))

}
}
\seealso{
\code{\link{hotMove}}
}
