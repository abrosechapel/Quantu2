#'@title
#'measurement
#'
#'@description
#'Find measurement
#'
#'@import tensor
#'@import dplyr
#'@import hash
#'
#'@examples
#' # to determinate the measurement of a circuit without any gate
#' measurement(qc,1)
#' # to determinate the measurement of a circuit with a gate but without Cnot gate
#' measurement(qc,2)
#' # to determinate the measurement of a circuit with Cnot gate type (0,1)
#' measurement(qc,3)
#' # to determinate the measurement of a circuit with Cnot gate type (1,0)
#' measurement(qc,4)
#'
#' @export






measurement <- function(a,b) {
  d <- dim(as.matrix(finalstate(a,b)))
  v <- NULL

  for(i in 1:d[1] ){
    v[i] <- Mod(as.matrix(finalstate(a,b))[i,1])^2
  }
  l = length(v)
  w = as.data.frame(v)
  x = t(w)
  if(l == 2){
    colnames(x) <- c("0","1")
  } else if (l == 4){
    colnames(x) <- c("00","01","10","11")
  } else if (l == 8){
    colnames(x) <- c("000","001","010","011","100","101","110","111")
  } else if (l == 16){
    colnames(x) <- c("0000","0001","0010","0011","0100","0101","0110","0111",
                     "1000","1001","1010","1011","1100","1101","1110","1111")
  } else if(l == 32){
    colnames(x) <- c("00000","00001","00010","00011","00100","00101","00110","00111",
                     "01000","01001","01010","01011","01100","01101","01110","01111",
                     "10000","10001","10010","10011","10100","10101","10110","10111",
                     "11000","11001","11010","11011","11100","11101","11110","11111")
  }

  x

}
