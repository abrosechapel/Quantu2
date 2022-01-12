#'@title
#'Ygate
#'
#'@description
#'PauliY gate for a circuit
#'
#'@import tensor
#'@import dplyr
#'
#'
#'@examples
#' # to apply an Y gate to the first qubit of a circuit called qc
#'
#' qc$q_1<-PauliY(qc$q_1)
#'
#'@export


PauliY <- function(a){
  Y=matrix(c(0,-1i,1i,0),nrow=2,ncol=2)
  result <-Y%*%a
  result<-array(result)
  result

}
