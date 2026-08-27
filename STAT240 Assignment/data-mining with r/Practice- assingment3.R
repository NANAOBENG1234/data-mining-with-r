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







#========question 3

grade_student <- function(score){
  if(score >= 80 ){
    print("A")
  }else if(score>= 70){
    print("B")
  }else if(score>= 60){
    print("C")
  }else if(score >= 50){
    print("D")
  }else{
    print("F")
  }
  return(grade)
}
grade_student(45)
grade_student(61)
grade_student(75)
grade_student(88)
grade_student(100)



library(anorexia)









Scores <- c(45,52,67,71,63,58,80,76,49,69)
Scores

stat_summary<-function(Scores){
  n = length(Scores)
  mean = sum(Scores)/n
  sd_num= c(sum(sum(Scores)/(n-Scores)))
  sd_deno= c(length(Scores))
  std = (sd_num/sd_deno)^0.5
  list( Mean = mean, Standard_dev = std)
  
}


Scores <- c(45,52,67,71,63,58,80,76,49,69)

stat_summary(Scores)




