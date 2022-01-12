#'@title
#'Zgate
#'
#'@description
#'PauliZ gate for a circuit
#'
#'@import tensor
#'@import dplyr
#'
#'
#'@examples
#' # to apply an Z gate to the first qubit of a circuit called qc
#'
#' qc$q_1<-PauliZ(qc$q_1)
#'
#'@export

PauliZ <- function(a){
  Z=matrix(c(1,0,0,-1),nrow=2,ncol=2)
  result <-Z%*%a
  result<-array(result)
  result

}
