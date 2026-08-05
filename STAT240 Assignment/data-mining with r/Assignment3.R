#=============QUESTION ONE =======================


Survey <- c(21,25,18,30,29,22,24,27,20,23)

summary_stat <- function(x){
  result = list(
    n = length(x),
    Mean  = mean(x),
    Median = median(x),
    Maxmimum = max(x),
    Mininmum = min(x),
    Varaince = var(x),
    sd = sd(x),
    range = max(x)-min(x)
    
    
  )
  return(result)
}
# 
summary_stat(Survey)






  

##===================Question 2=======

circle_measure <- function(radius){
  area = pi*(radius^2)
  circumference = 2*pi*radius
  result <- list(
    Area = area,
    Circumference = circumference
  )
  return(result)
}
circle_measure(3)
circle_measure(7.5)
circle_measure(10)
