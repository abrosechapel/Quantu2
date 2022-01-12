#'@title
#'Final state
#'
#'@description
#'Find the vector state of a circuit
#'
#'@import tensor
#'@import dplyr
#'
#'
#'@examples
#' # to determinate the state of a circuit without any gate
#' finalstate(qc,1)
#' # to determinate the state of a circuit with a gate but without Cnot gate
#' finalstate(qc,2)
#' # to determinate the state of a circuit with Cnot gate type (0,1)
#' finalstate(qc,3)
#' # to determinate the state of a circuit with Cnot gate type (1,0)
#' finalstate(qc,4)
#'
#'@export
#'
finalstate<- function(a,b) {
  if (length(a)>1&b==1){
    colstate <-vector(mode="list", length=length(a))
    colstate<-Reduce("%x%",a[1:length(a)])
    colstate
  }
  else if (length(a)>1&b==2){
    colstate <-vector(mode="list", length=length(a))
    colstate<-Reduce("%x%",a[length(a):1])
    colstate
  }
  else if (b==3){
    b<-a
    colstate <-vector(mode="list", length=length(b))
    colstate <-  as.numeric(unlist(b[1])) %x% as.numeric(unlist(b[2]))
    if(identical(as.list(colstate),as.list(q10))==TRUE|
       identical(as.list(colstate),as.list(q11))==TRUE){
      colstate<-as.numeric(unlist(b[2])) %x% as.numeric(unlist(b[1]))
      colstate}
    else if (identical(as.list(colstate),as.list(q10))==FALSE|
             identical(as.list(colstate),as.list(q11))==FALSE) {
      colstate <-  as.numeric(unlist(b[2])) %x% as.numeric(unlist(b[1]))
      colstate<-c(colstate[1],colstate[4],colstate[3],colstate[2])
      colstate

    }
  }

  else if (b==4){
    b<-a
    colstate <-vector(mode="list", length=length(b))
    colstate <-  as.numeric(unlist(b[1])) %x% as.numeric(unlist(b[2]))
    if(identical(as.list(colstate),as.list(q01))==TRUE |
       identical(as.list(colstate),as.list(q10))==TRUE |
       identical(as.list(colstate),as.list(q11))==TRUE){
      colstate<-as.numeric(unlist(b[1])) %x% as.numeric(unlist(b[2]))
      colstate}
    else if (identical(as.list(colstate),as.list(q01))==FALSE |
             identical(as.list(colstate),as.list(q10))==FALSE |
             identical(as.list(colstate),as.list(q11))==FALSE) {
      colstate <-  as.numeric(unlist(b[2])) %x% as.numeric(unlist(b[1]))
      colstate<-c(colstate[1],colstate[2],colstate[4],colstate[3])
      colstate

    }
  }
  else if (length(a)==1&b==1){
    colstate<-a[1]
    colstate}

}

