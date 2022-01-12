#'@title
#'quantumcircuit
#'
#'@description
#'Create a circuit of n qubits
#'
#'@import tensor
#'@import dplyr
#'@import hash
#'
#'
#'
#'@examples
#' # to create a quantum circuit of two qubits called qc
#'
#' qc<-quantumcircuit(2)
#'
#'@export




quantumcircuit <- function(nqubit){
  as.numeric(nqubit)
  if (nqubit>0 | !is.null(nqubit)){
    circuit <<-vector(mode="list", length=nqubit)
    names(circuit)<<- paste("q",1:nqubit, sep = "_")
    for (i in 1:nqubit){
      circuit[i]<-array(list(c(q0)))
    }
    circuit
  }
}
