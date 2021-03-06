#'@title
#'Plot measurement
#'
#'@description
#'Plot the measurement
#'
#'@import tensor
#'@import dplyr
#'@import ggplot2
#'
#'@examples
#' # to plot the measurement of a circuit called qc
#'
#' plotMeasurement(measurement(qc,1))
#'
#'
#'
#'@export



plotMeasurement <- function(a){
  d <- dim(a)
  qubits=p =NULL
  if(d[1] < d[2]){
    a <- t(a)
  }
  b <- length(a)

  # Create a dataframe
  c <- as.data.frame(a)
  colnames(c) <- c("p")

  # Check the length of the vector
  if(b == 2){
    c$qubits <- c("0","1")
  } else if(b == 4){
    c$qubits <- c("00","01","10","11")
  } else if(b == 8){
    c$qubits <- c("000","001","010","011","100","101","110","111")
  } else if(b == 16){
    c$qubits <- c("0000","0001","0010","0011","0100","0101","0110","0111",
                  "1000","1001","1010","1011","1100","1101","1110","1111")
  } else if(b == 32){
    c$qubits <- c("00000","00001","00010","00011","00100","00101","00110","00111",
                  "01000","01001","01010","01011","01100","01101","01110","01111",
                  "10000","10001","10010","10011","10100","10101","10110","10111",
                  "11000","11001","11010","11011","11100","11101","11110","11111")
  }

  else{
    print("Not supported")
  }
  ggplot(c,aes(x=qubits,y=p,fill=p)) + geom_bar(stat="identity") +
    xlab("Qubits") + ylab("Probability") + ylim(0,1.0) +
    ggtitle("Probabilty distribution") + theme(plot.title = element_text(hjust = 0.5))+
    geom_text(data=subset(c,p != 0),aes(label= format(p,digits=3,nsmall=0),y=p+0.05))

}#'Hadamard gate
#'
#'@import tensor
#'@import dplyr
#'
#'
#'@examples
#' # to apply hadamard to the first qubit of a circuit called qc
#'
#' qc$q_1<-Hadamard(qc$q_1)
