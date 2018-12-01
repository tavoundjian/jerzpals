#' Jerzy-inspired palette (discrete)
#'
#' Jerzy-inspired palette (discrete)
#'
#' @usage jerz_pal(alpha = 1, begin = 0, end = 1, direction = 1, option = "B")
#'
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
#' @seealso \code{\link{jerz}} for more information on the color scale.
#'
#' @author Tigran AVoundjian, Tanya Basmadjian, Jerzy Eisenberg-Guyot
#'
#'
#' @export

jerz_pal <- function (alpha = 1, begin = 0, end = 1, direction = 1, option = "B") {
  function(n) {
    jerz(n, alpha, begin, end, direction,
         option)
  }
}
