#'@title
#'define_state
#'
#'@description
#'Define the state of until 4 qubits
#'
#'
#'@import tensor
#'@import dplyr
#'@import hash
#'
#'@examples
#' # to determinate the state of circuit because it is in state 0
#' #if in one qubitcircuit I want to change the 0 state to 1
#' putstate(qc,1)
#'
#'@export





definestate <- function(a,state){
  if  (length(a)==1 & (state==0 | is.null(state))){
    a<-c(q_1=array(list(c(q0))))
  }
  else if  (length(a)==1 & state==1){
    a<-c(q_1=array(list(c(q1))))

  }
  else if (length(a)==2 & state==00) {
    a<-c(q_1=array(list(c(q0))),q_2=array(list(c(q0))))
  }
  else if (length(a)==2 & state==01) {
    a<-c(q_1=array(list(c(q0))),q_2=array(list(c(q1))))
  }

  else if (length(a)==2 & state==10) {
    a<-c(q_1=array(list(c(q1))),q_2=array(list(c(q0))))
  }
  else if (length(a)==2 & state==11) {
    a<-c(q_1=array(list(c(q1))),q_2=array(list(c(q1))))
  }
  else if (length(a)==3 & state==000) {
    a<-c(q_1=array(list(c(q0))),q_2=array(list(c(q0))),q_3=array(list(c(q0))))
  }
  else if (length(a)==3 & state==001) {
    a<-c(q_1=array(list(c(q0))),q_2=array(list(c(q0))),q_3=array(list(c(q1))))
  }
  else if (length(a)==3 & state==010) {
    a<-c(q_1=array(list(c(q0))),q_2=array(list(c(q1))),q_3=array(list(c(q0))))
  }
  else if (length(a)==3 & state==011) {
    a<-c(q_1=array(list(c(q0))),q_2=array(list(c(q1))),q_3=array(list(c(q1))))
  }
  else if (length(a)==3 & state==100) {
    a<-c(q_1=array(list(c(q1))),q_2=array(list(c(q0))),q_3=array(list(c(q0))))
  }
  else if (length(a)==3 & state==101) {
    a<-c(q_1=array(list(c(q1))),q_2=array(list(c(q0))),q_3=array(list(c(q1))))
  }
  else if (length(a)==3 & state==110) {
    a<-c(q_1=array(list(c(q1))),q_2=array(list(c(q1))),q_3=array(list(c(q0))))
  }
  else if (length(a)==3 & state==111) {
    a<-c(q_1=array(list(c(q1))),q_2=array(list(c(q1))),q_3=array(list(c(q1))))
  }
  else if (length(a)==4 & state==0000) {
    a<-c(q_1=array(list(c(q0))),q_2=array(list(c(q0))),q_3=array(list(c(q0))),q_4=array(list(c(q0))))
  }
  else if (length(a)==4 & state==0001) {
    a<-c(q_1=array(list(c(q0))),q_2=array(list(c(q0))),q_3=array(list(c(q0))),q_4=array(list(c(q1))))
  }
  else if (length(a)==4 & state==0010) {
    a<-c(q_1=array(list(c(q0))),q_2=array(list(c(q0))),q_3=array(list(c(q1))),q_4=array(list(c(q0))))
  }
  else if (length(a)==4 & state==0011) {
    a<-c(q_1=array(list(c(q0))),q_2=array(list(c(q0))),q_3=array(list(c(q1))),q_4=array(list(c(q1))))
  }
  else if (length(a)==4 & state==0100) {
    a<-c(q_1=array(list(c(q0))),q_2=array(list(c(q1))),q_3=array(list(c(q0))),q_4=array(list(c(q0))))
  }
  else if (length(a)==4 & state==0101) {
    a<-c(q_1=array(list(c(q0))),q_2=array(list(c(q1))),q_3=array(list(c(q0))),q_4=array(list(c(q1))))
  }
  else if (length(a)==4 & state==0110) {
    a<-c(q_1=array(list(c(q0))),q_2=array(list(c(q1))),q_3=array(list(c(q1))),q_4=array(list(c(q0))))
  }
  else if (length(a)==4 & state==0111) {
    a<-c(q_1=array(list(c(q0))),q_2=array(list(c(q1))),q_3=array(list(c(q1))),q_4=array(list(c(q1))))
  }
  else if (length(a)==4 & state==1000) {
    a<-c(q_1=array(list(c(q1))),q_2=array(list(c(q0))),q_3=array(list(c(q0))),q_4=array(list(c(q0))))
  }
  else if (length(a)==4 & state==1001) {
    a<-c(q_1=array(list(c(q1))),q_2=array(list(c(q0))),q_3=array(list(c(q0))),q_4=array(list(c(q1))))
  }
  else if (length(a)==4 & state==1010) {
    a<-c(q_1=array(list(c(q1))),q_2=array(list(c(q0))),q_3=array(list(c(q1))),q_4=array(list(c(q0))))
  }
  else if (length(a)==4 & state==1011) {
    a<-c(q_1=array(list(c(q1))),q_2=array(list(c(q0))),q_3=array(list(c(q1))),q_4=array(list(c(q1))))
  }
  else if (length(a)==4 & state==1100) {
    a<-c(q_1=array(list(c(q1))),q_2=array(list(c(q1))),q_3=array(list(c(q0))),q_4=array(list(c(q0))))
  }
  else if (length(a)==4 & state==1101) {
    a<-c(q_1=array(list(c(q1))),q_2=array(list(c(q1))),q_3=array(list(c(q0))),q_4=array(list(c(q1))))
  }
  else if (length(a)==4 & state==1110) {
    a<-c(q_1=array(list(c(q1))),q_2=array(list(c(q1))),q_3=array(list(c(q1))),q_4=array(list(c(q0))))
  }
  else if (length(a)==4 & state==1111) {
    a<-c(q_1=array(list(c(q1))),q_2=array(list(c(q1))),q_3=array(list(c(q1))),q_4=array(list(c(q1))))
  }
}
