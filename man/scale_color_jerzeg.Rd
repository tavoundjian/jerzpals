% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/scale_color_jerzeg.R
\name{scale_color_jerzeg}
\alias{scale_color_jerzeg}
\title{Jerzy-inspired color scales}
\usage{
scale_color_jerzeg(..., alpha = 1, begin = 0, end = 1, direction = 1, discrete = FALSE, option = "B")
}
\arguments{
\item{...}{parameters to \code{discrete_scale} or \code{scale_fill_gradientn}}

\item{alpha}{pass through parameter to jerz}

\item{begin}{numeric value between 0 and 1. Indicates the first color in the palette}

\item{end}{numeric value between 0 and 1. Indicates the last color in the palette}

\item{direction}{sets the order of the colors in the scale. If 1 (default), colors are output by jerz_pal. If -1, the order of colors is reversed.}

\item{discrete}{generate a discrete palette? (default: \code{FALSE} - generate continuous palette)}

\item{option}{character string indicating the palette option to use. Available options are
\itemize{
     \item "jerzshoe1" (or "A")
     \item "jerzeg" (or "B")
     \item "jerzhat" (or "C")
     \item "jerzhsirt" (or "D")
     \item "jerzshoe2" (or "E")
     \item "jerzjacket" (or "F")
     \item "jerzpack1" (or "G")
     \item "jerzpack2" (or "H")
}}
}
\description{
Uses color scales inspired by the stylish Jerzy
}
\examples{
library(ggplot2)
library(jerzpals)

data(iris)

# Discrete scale
ggplot(data = iris, aes(x = Species, y = Petal.Length)) +
geom_bar(aes(fill = Species), stat = "identity") +
scale_fill_jerzeg(option = "jerzshoe1", begin = 0.5, discrete = TRUE) +
theme_bw()

# Continuous scale
ggplot(data = iris, aes(x = Petal.Width, y = Petal.Length)) +
geom_point(aes(color = Sepal.Width)) +
scale_fill_jerzeg(option = "F", begin = 0, end = 0.8) # use begin and end to set range of colors used in the palette
theme_bw()


}
\keyword{ggplot,}
\keyword{jerzy,}
\keyword{palettes}
