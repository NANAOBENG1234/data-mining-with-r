##=========================
#writin a fcuntion that will print more that one descrition about a data
#===================

weight <- c(55,62,48,70,65,58,61,53)

describe_vector <- function(x){
  result<- list(
    n = length(x),
   mean = mean(x),
     median = median(x),
    Mininum = min(x),
   maximum = max(x),
   Variance = var(x),
   sd = sd(x),
   range = max(x) - min(x)
   
  )
  return(result)
}
describe_vector(weight)





#=========================  Question 2 =========


rectangle_measure <- function(side){
  perimeter = 4*side
  area = side^2
  result <- list(
    Perimeter = perimeter,
    Area = area
    
  )
  return(result)
}
rectangle_measure(9)
