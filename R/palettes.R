#' Internal fucntion to create Jerzy-inspired palettes
#'
#' @export

jerz.palette_f <- function () {
  jerz.palette <- list(
    A = c('#F2F2F2','#FBE400','#129151','#686868','#000000'), #jerzshoe1
    B = c('#45563A','#B12024','#EE2F2E','#F2888D','#FAC6C7'), #jerzeg
    C = c('#5EA644','#FBE400','#E68624','#EE2725','#FAC8D3'), #jerzhat
    D = c('#F9CF0C','#27B69A','#2C2A6F','#E5637F','#E2E2E2'), #jerzshirt
    E = c('#000000','#CD862A','#502D7F','#1C8775','#FBE400'), #jerzshoe2
    F = c('#FEE445','#9FA980','#5D774F','#2F4721','#000000'), #jerzjacket
    G = c('#EE2725','#EC8D23','#FBE400','#5DBB53','#49BFCB'), #jerzpack1
    H = c('#EE2725','#49BFCB','#FBE400','#000000','#E2E2E2')  #jerzpack2
  )

  return(jerz.palette)
}


