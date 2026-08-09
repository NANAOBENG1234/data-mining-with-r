x<-c(2,4,7,10,20,22,23)
y<-c(2,7,9,10,10,20,24)

data<-function(x,y){
  d=rank(x)-rank(y)
  numerator<-c(6*sum(d^2))
  n = length(x) 
  denominator<-c(n*((n^2)-1))
  Corr= 1-( numerator/denominator )
  return (Corr)
}


print(data(x,y))
      
      
      
Spearman<-function(x,y){
n =length(x),
numerator= n*(sum(x*y))- (sum(x)*sum(y)),
d1<-c(n*(sum(x^2)-(sum(x)^2) ),
s1<-c(n*(sum(y^2)-(sum(y)^2)),
denominator=(d1*s1)^0.5,
 spear= numerator/(denominator),
 return(spear)
}
 print (Spearman(x,y))
 
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
?rank

 
 
 ## For Loops
  for(i in 1:20)
    print ("hello")
 
 
 ##While loops 
 i<-10,
 while(i>0){
   print("hello")
   i<-i-1
 }
 
 
 x<-6,
 if(x>0){
   print("X is positive")
 }else{
   print("X is non-positive")
 }
 
 
 
 z <-c(-1,2,-3,4)
 ifelse(z>0, "Positive","Non-Positive")

 
 x<-0
 if(x>0){
   print("positive")
 }else if(x<0){
   print("negative")
 }else{
   print("zero")
 }
 ##====Work on this =======
 x<-c(2,4,7,10,20,22,23)
 y<-c(2,7,9,10,10,20,24)
 
 data<-function(x,y){ 
   d=rank(x)-rank(y)
   numerator<-c(6*sum(d^2))
   n = length(x) 
   denominator<-c(n*((n^2)-1))
   Corr= 1-( numerator/denominator )
   return (Corr)
 Corr.cat<-function(x,y){
 
 if(corr<=0 & corr <=0.3){
   print("Weak correlation")
 }elseif(corr<=0.31 & corr <=0.69){
   print("Moderate Correlation")
 }esle{
   print("Strong correlation")
      }
 }
 print(data)
 
 
 
 
 
 #===============Hypothesis Testing ===========
 
 ?t.test
  library(MASS)
names(cabbages)
?cabbages
 summary(cabbages$HeadWt)
 
 ##==== HO: mu = 2.84Kg
 ## ======H1 : mu < 2.84 Kg
 
t.test(cabbages$HeadWt, alternative = "less", 
      mu = 2.84) 
 
 ##======= To get the critical value============ 
 
 qt(0.05,59)



t.test(cabbages$HeadWt, alternative = "less", 
       mu = 3.10  ) 


## when H1 != we use the *two.sided* to reject the H0
t.test(cabbages$HeadWt, alternative = "two.sided", 
       mu = 3.10  )

##=======For two sample T-test======

# H0: U_c39 = U_c52
#H1: U_c39 < U_c52
 t.test(HeadWt~Cult, data = cabbages, 
        alternative ="less")
## Test of equality of variance


#===========Test Of Variance======
## When variance1 = 2 and H1 : v1 != v2
library(car)
?leveneTest
leveneTest(HeadWt~Cult, data = cabbages,
           var.equal = TRUE)

##Other variablity test 
#--------------

## READ ON 

