#'@title
#'Hadamard gate
#'
#'@description
#'Hadamard gate for a circuit
#'
#'
#'@import tensor
#'@import dplyr
#'
#'
#'
#'@examples
#' # to apply hadamard to the first qubit of a circuit called qc
#'
#' qc$q_1<-Hadamard(qc$q_1)
#'
#'@export

Hadamard <- function(a){
  H=1/sqrt(2) * matrix(c(1,1,1,-1),nrow=2,ncol=2)
  result <-H%*%a
  result<-array(result)
  result
}



