#=============QUESTION ONE =======================


data<- c(21,25,18,30,29,22,24,27,20,23)

summary_stat <- function(x){
  result = list(
    n = length(x),
    Mean  = mean(x),
    Median = median(x),
    Maximum = max(x),
    Mininmum = min(x),
    Varaince = var(x),
    sd = sd(x),
    range = max(x)-min(x)
    
    
  )
  return(result)
}
 
summary_stat(data)






  

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


