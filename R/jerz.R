#' Jerzy-inspired color map
#'
#' Jerzy-inspired color map
#'
#' @usage jerz(n, alpha = 1, begin = 0, end = 1, direction = 1, option = "B")
#'
#' @param n The number of colors (at least 1) to be in the palette
#' @param alpha pass through parameter to jerz
#' @param begin numeric value between 0 and 1. Indicates the first color in the palette
#' @param end numeric value between 0 and 1. Indicates the last color in the palette
#' @param direction sets the order of the colors in the scale. If 1 (default), colors are output by jerz_pal. If -1, the order of colors is reversed.
#' @param option character string indicating the palette option to use. Available options are
#' \itemize{
#'      \item "jerzshoe1" (or "A")
#'      \item "jerzeg" (or "B")
#'      \item "jerzhat" (or "C")
#'      \item "jerzhsirt" (or "D")
#'      \item "jerzshoe2" (or "E")
#'      \item "jerzjacket" (or "F")
#'      \item "jerzpack1" (or "G")
#'      \item "jerzpack2" (or "H")
#' }
#'
#' @author Tigran AVoundjian, Tanya Basmadjian, Jerzy Eisenberg-Guyot
#'
#' @export

# Added a comment

jerz <- function (n, alpha = 1, begin = 0, end = 1, direction = 1, option = "B")
{
  if (begin < 0 | begin > 1 | end < 0 | end > 1) {
    stop("begin and end must be in [0,1]")
  }
  if (abs(direction) != 1) {
    stop("direction must be 1 or -1")
  }
  if (direction == -1) {
    tmp <- begin
    begin <- end
    end <- tmp
  }
  option <- switch(EXPR = option, A = "A", jerzshoe1 = "A",
                   B = "B", jerzeg = "B",
                   C = "C", jerzhat = "C",
                   D = "D", jerzshirt = "D",
                   E = "E", jerzshoe2 = "E",
                   F = "F", jerzjacket = "F",
                   G = "G", jerzpack1 = "G",
                   H = "H", jerzpack2 = "H", {
                     warning(paste0("Option '", option, "' does not exist. Defalting to 'jerzeg'"))
                     "B"
                   })

  palettes <- jerz.palette_f()

  map <- palettes[[which(names(palettes) == option)]]
  fn_cols <- grDevices::colorRamp(map, space = "Lab",
                                  interpolate = "spline")
  cols <- fn_cols(seq(begin, end, length.out = n))/255
  grDevices::rgb(cols[, 1], cols[, 2], cols[, 3], alpha = alpha)
}

# Boop
