#'@title
#'X gate
#´'
#'@description
#'PauliX gate for a circuit
#'
#'@import tensor
#'@import dplyr
#'
#'
#'@examples
#' # to apply an X gate to the first qubit of a circuit called qc
#'
#' qc$q_1<-PauliX(qc$q_1)
#'
#'@export



PauliX <- function(a){
  X= matrix(c(0,1,1,0),nrow=2,ncol=2)
  result <-X%*%a
  result<-array(result)
  result
}
