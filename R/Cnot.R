#'@title
#'Cnot gate
#'
#'@description
#'cnot gate for a circuit with two qubits
#'
#'
#'@import tensor
#'@import dplyr
#'
#'
#'@examples
#' # to apply Cnot gate to a circuit called qc
#'
#' for Cx(0,1)
#' Cnot(qc,01)
#'
#' forcx(1,0)
#' Cnot(qc,10)
#'
#'@export

Cnot<-function(a,b){
  if(b==01){
    if (all.equal(as.numeric(unlist(a$q_2)),q0)==TRUE & all.equal(as.numeric(unlist(a$q_1)),q1)==TRUE){
      a[2]<-array(list(c(q1)))

    }
    else if (all.equal(as.numeric(unlist(a$q_2)),q1)==TRUE & all.equal(as.numeric(unlist(a$q_1)),q1)==TRUE){
      a[2]<-array(list(c(q0)))
    }
    result<-a
    result
  }

  else if(b==10)
  {
    if (all.equal(as.numeric(unlist(a$q_2)),q1)==TRUE & all.equal(as.numeric(unlist(a$q_1)),q0)==TRUE){
      a[1]<-array(list(c(q1)))
      a[2]<-array(list(c(q1)))

    }
    else if (all.equal(as.numeric(unlist(a$q_2)),q1)==TRUE & all.equal(as.numeric(unlist(a$q_1)),q1)==TRUE){
      a[1]<-array(list(c(q1)))
      a[2]<-array(list(c(q0)))
    }
    else if (all.equal(as.numeric(unlist(a$q_2)),q0)==TRUE & all.equal(as.numeric(unlist(a$q_1)),q1)==TRUE){
      a[1]<-array(list(c(q0)))
      a[2]<-array(list(c(q1)))
    }
    result<-a
    result
  }

}
