#'@title
#'Init
#'
#'@description
#'Create the basic variables of work
#'
#'
#'@import tensor
#'@import dplyr
#'
#'
#'@examples
#'
#'
#' # to create some important variables
#' init()
#'
#'@export



init <- function(){

  #1 qubit
  q0<<-c(1,0)
  q1<<-c(0,1)

  #2qubits

  q00<<-matrix(c(q0 %x% q0))
  q01<<-matrix(c(q0 %x% q1))
  q10<<-matrix(c(q1 %x% q0))
  q11<<-matrix(c(q1 %x% q1))


  #3 qubits

  q000<<-matrix(c(q0 %x% q0%x% q0))
  q001<<-matrix(c(q0 %x% q0%x% q1))
  q010<<-matrix(c(q0 %x% q1%x% q0))
  q011<<-matrix(c(q0 %x% q1%x% q1))

  q100<<-matrix(c(q1 %x% q0%x% q0))
  q101<<-matrix(c(q1 %x% q0%x% q1))
  q110<<-matrix(c(q1 %x% q1%x% q0))
  q111<<-matrix(c(q1 %x% q1%x% q1))

  #4 qubits

  q0000<<-matrix(c(q0 %x% q0%x% q0%x% q0))
  q0001<<-matrix(c(q0 %x% q0%x% q0%x% q1))
  q0010<<-matrix(c(q0 %x% q0%x% q1%x% q0))
  q0011<<-matrix(c(q0 %x% q0%x% q1%x% q1))
  q0100<<-matrix(c(q0 %x% q1%x% q0%x% q0))
  q0101<<-matrix(c(q0 %x% q1%x% q0%x% q1))
  q0110<<-matrix(c(q0 %x% q1%x% q1%x% q0))
  q0111<<-matrix(c(q0 %x% q1%x% q1%x% q1))
  q1000<<-matrix(c(q1 %x% q0%x% q0%x% q0))
  q1001<<-matrix(c(q1 %x% q0%x% q0%x% q1))
  q1010<<-matrix(c(q1 %x% q0%x% q1%x% q0))
  q1011<<-matrix(c(q1 %x% q0%x% q1%x% q1))
  q1100<<-matrix(c(q1 %x% q1%x% q0%x% q0))
  q1101<<-matrix(c(q1 %x% q1%x% q0%x% q1))
  q1110<<-matrix(c(q1 %x% q1%x% q1%x% q0))
  q1111<<-matrix(c(q1 %x% q1%x% q1%x% q1))
}
