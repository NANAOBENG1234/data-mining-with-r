snap<-c(12,14,13,96,34,56,20)
length(snap)
mean(snap)
min(snap)
max(snap)

sort(snap, decreasing = FALSE)

x<-c(12,56,78,4,65,23,45,10)
y<-1:20
x+y 
x-y
x%%y
x*y



names(x)<-c("a", "b", "c", "d","e", "f")
x["d"]


snap<-seq(1,9, by = 3)
snap
snap<-rep(snap, times = 2 )

Drivers <- matrix(c(12,32,45,3,2,21,
               12,34,54,66,6,7,
               1,0,6,54,65,43),
             nrow = 3, byrow =TRUE)
rownames(Drivers)<-c("Ben", "Aristo","Nana obeng")
colnames(Drivers)<-c("Mon", "Tues", "Wed", "Thu", "Fri", "Sat")
rowSums(Drivers)
colSums(Drivers)


African_studies <-matrix(c(12,43,43,56,6,
                  12,43,76,78,90,
                  34,32,1,25,65),
                   nrow = 3 , ncol = 5, byrow = TRUE)
colnames(African_studies)<-c("Nana obeng", "Princess", "Sammy","Kwarko", "Galaxy")
rownames(African_studies)<-c("WKinput", "Performance", "Availability")

Nana_Obeng<-matrix(c(1,2,3,4,
                     3,4,7,6,
                     4,9,10,11),
                   nrow = 3 , ncol = 4, byrow= TRUE)
colnames(Nana_Obeng)<-c("Agyeman", "Obeng", "Benedict", "Nana")
rownames(Nana_Obeng)<-c("Laerning", "R","Almost done")

African_studies#creating a data frame we use data.frame
kev<-data.frame(
  age = c(20,21,23,34,54,NA),
  Gender = c("M", "F","M","F","M","M"),
  BloodType = c("A" , "BB", "AA", "O","B","AB"),
  Recovered =c(TRUE,FALSE,TRUE,FALSE,TRUE,TRUE),
  row.names=c("P1" ,"P2","P3","P4","P5","P6")
)
Agyeman

Agye<-data.frame(
  age = c(10,14,24),
  height = c(14.5, 54.2,"NA"),
  SCORE =c(90,78,100),
  row.names=c("P1", "P2","P3")
  )
Agye




ralph<-data.frame(
  Course=c("General Art", "Bussiness", "Int Science" ),
  Grade =c( "A","B", "B+" ),
  prefered_prog=c("Political science", "Bussiness", "Art"),
  row.names=c("Year1","Year2" ,"Year3")
)
str(ralph)
summary(ralph)
ralph$Course
ralph[, "Grade"]

file.choose()
Tab1<-read.csv( "C:\\Users\\KC-User\\Downloads\\Titanic-Dataset.csv")
str(Tab1)
summary(Tab1)
dim(Tab1)
dim(Fare)
Tab1$Fare
names(Tab1$Fare)

?hist
hist(Tab1$Fare, main = "Histogram of Data from Fare",
     xlab = "Fare",
     ylab = "Ages",
     xlim= c(0,580),
     ylim = c(0,800),
     col=c("brown","black","red","blue"))

?plot
plot(Tab1$Age,Tab1$Fare, main= " A scatter Diagram of FARE and AGE",
     xlab ="Fare(in $)",
     ylab = "Age",
     xlim = c(0, 100),
     ylim = c(0,350),
     col = "blue")

boxplot(Tab1$Age,
        main = " Boxplot of Ages in the Dataset",
       xlab ="Fare", 
       col= "orange")




##===========solving exam typoed questions =====##

#a) 
Score <- c(68,75,82,91,NA,74,88,NA,95,61)
Score
#OUTPUT
#[1] 68 75 82 91 NA 74 88 NA 95 61

#B)
length(Score)
#OUTPUT
#[1] 10
mean(Score, na.rm = TRUE)
#OUTPUT
#[1] 79.25
min(Score,na.rm=TRUE)
#OUTPUT
#[1] 61
max(Score, na.rm=TRUE)
#OUTPUT
#[1] 95

#C)
is.na(Score)
#OOTPUT
# [1] FALSE FALSE FALSE FALSE  TRUE FALSE FALSE  TRUE FALSE FALSE

sum(is.na(Score))
#OUTPUT
#[1] 2

#D)
Student<-c(Score <= 80)
Student
#OUTPUT
# [1]  TRUE  TRUE FALSE FALSE    NA  TRUE FALSE    NA FALSE  TRUE


#E)
sort.int(Score, decending = TRUE, na.rm =TRUE)


#f)
Score_clean<-Score[!is.na(Score)]
score_clean
#OUTPUT
#[1] 68 75 82 91 74 88 95 61



#g)
mean(Score_clean)
#[1] 79.25


#H


#Q2

#A)
customer<-matrix(c(18,21,16,20,
                 25,19,22,24,
                 15,23,20,17),
                 nrow = 3, byrow =TRUE)
rownames(customer)=c("Employee 1","Employee 2","Employee 3")
colnames(customer)=c("Monday","Tuesday","Wednesday","Thurday")

customer
#           Monday Tuesday Wednesday Thurday
#Employee 1     18      21        16      20
#Employee 2     25      19        22      24
#Employee 3     15      23        20      17

#b)
rowSums(customer)

#Employee 1 Employee 2 Employee 3 
#75         90         75 

colSums(customer)
# Monday   Tuesday Wednesday   Thurday 
# 58        63        58        61 


x<-t(customer)

#          Employee 1 Employee 2 Employee 3
#Monday            18         25         15
#Tuesday           21         19         23
#Wednesday         16         22         20
#Thurday           20         24         17

dim(x)
#[1] 4 3


#E)
employees<-data.frame(
  age =c(24,31,27),
  Department =c("Sales","Marketing","Sales"),
  Sactisfaction =c("High","Medium", "Low"),
  row.names=c("E1","E2","E3")
)

employees
#age Department Sactisfaction
#E1  24      Sales          High
#E2  31  Marketing        Medium
#E3  27      Sales           Low

str(employees)
#'data.frame':	3 obs. of  3 variables:
#$ age          : num  24 31 27
#$ Department   : chr  "Sales" "Marketing" "Sales"
#$ Sactisfaction: chr  "High" "Medium" "Low"

summary(employees)

#age            Department   Sactisfaction
#Min.   :24.00   Length   :3    Length   :3    
#1st Qu.:25.50   N.unique :2    N.unique :3    
#Median :27.00   N.blank  :0    N.blank  :0    
#Mean   :27.33   Min.nchar:5    Min.nchar:3    
#3rd Qu.:29.00   Max.nchar:9    Max.nchar:6    
#Max.   :31.00

Satisfacction<-c("High","Medium","Low","High")
Sat_factor<-factor(Satisfacction, levels=c("Low","Medium","High"), ordered = TRUE)
#[1]1] High   Medium Low   
#Levels: Low < Medium < High
table(Sat_factor)
#   Low Medium   High 
#1      1      2 


Sat_factor > "Low"
#[1]  TRUE  TRUE FALSE  TRUE
as.numeric(Sat_factor)







file.choose()
Data<-read.delim("C:\\Users\\KC-User\\Downloads\\Titanic-Dataset.txt")
names(Data)
dim(Data)
summary(Data)


hist(Data$Age,
     main = "A histogram of Age in the Data set",
     xlab= "Ages",
     ylab ="Frequency",
     col =c("red", "black", "orange"),
     xlim=c(0,100),
     ylim = c(0,300)
     
     )

boxplot(Data$Fare)
plot(Data$Fare,Data$Age)



#graph


Scores<-c(45,52,67,71,58,83,76,91,64,55,72,88,49,61,79,68,95,57,73,84)

Scores
#[1] 45 52 67 71 58 83 76 91 64 55 72 88 49 61 79 68 95 57 73 84

hist(Scores, main ="A Histogram of recorded Scores",
     xlab = "Scores",
     ylab = "Student",
     xlim = c(30,120),
     ylim=c(0,8),
     col = c("brown",'red', "black","orange"))



#the histogram display the relationship between the student and their scores , with the scores linked with range of students 

boxplot(Scores,main= "A Boxplot of Recorded Scores",
        col = "blue",
        horizontal = TRUE,
        xlab = "Scores"
        )

summary(Scores)





?barplot
barplot(Scores
       
        )
















Student<-data.frame(
  StudyHours=c(2,3,4,5,5,6,7,8,9,10),
  Score=c(48,55,61,65,70,72,78,81,88,92),
  Gender =c("F", "M","F","M","F","M",
            "F","M","F","M"),
  row.names = c("S1","S2","S3","S4","S5","S6","S7","S8","S9","S10")
)
Student



plot(Student$StudyHours, Student$Score, main= "scatter plot showing the relationship between Studyhours and Score",
     col = "orange",
     xlab = "Study hours",
     ylab = " Score",
abline(lm(Score ~ StudyHours, data = Student))
)









str(kev)
summary(kev)
kev$BloodType
kev[2, "age"]

##Opening a file 
file.choose()
titanic_csv<-read.csv("C:\\Users\\Nana Obeng\\Downloads\\Titanic-Dataset.csv")
titanic_txt<-read.delim("C:\\Users\\Nana Obeng\\Downloads\\Titanic-Dataset.txt")

names(titanic_csv)
dim(titanic_csv)
str(titanic_txt)
head(titanic_csv)
tail(titanic_csv)
summary(titanic_csv)

mean(titanic_csv$Fare, na.rm = TRUE)
median(titanic_csv$Survived, na.rm = TRUE)
sd(titanic_csv$Fare , na.rm = TRUE)
var(titanic_csv$Fare , na.rm = TRUE)
max(titanic_csv$Fare , na.rm = TRUE)
min(titanic_csv$Fare , na.rm = TRUE)

IQR(titanic_csv$Fare, na.rm =TRUE)## Measure the spread of thr middle observations
summary(titanic_csv$Fare)


score<-c(86,87,NA, NA, 59,90 ,NA)
is.na(score)
sum(is.na(score))
mean(score, na.rm =TRUE)
mean(score)


Satisfactory<-c("Low", "High", "Medium", "Low", "Medium", "High", "Low ")

sat_factor <- factor(Satisfactory,
                   levels = C("Low","Medium","High"),
                    ordered = TRUE)
levels(Sat_factor)
table(Satisfactory)


sat_factor > "Low"
as.character(Sat_factor)
as.numeric(Sat_factor)


#Graphs

hist(titanic_csv$Fare, 
     main = "Histogram of Titanic Fare",
     xlab = "Fare",
     ylab = "Number of Passengers" ,
col =c( "red","blue", "yellow","orange", "black", "purple")
)





hist(log(titanic_csv$Fare[titanic_csv$Fare>0]),
     main ="Histogram of Log Fare",
     xlab= "LogFare",
     ylab = " Passengers",
     col =c( "red","blue", "yellow","orange", "black", "purple")
     )


boxplot(titanic_csv$Fare, 
        main= " Box Plot of Titanic Fare",
        xlab = "Fare",
        ylab = " Passengers",
        col = "red")


##==== bivariate graphs  =====##     
##Scatter Diagram
plot(titanic_csv$Age, titanic_csv$Fare,
     main = " Scatter Diagram of Age againt Fare",
     xlab = "Age",
     ylab = " Fare",
     col =c( "red","blue", "yellow","orange", "black", "purple")
     
     )

## CORRELATION USE COMPLETE obs
cor(titanic_csv$Age, titanic_csv$Fare, 
    use = "complete.obs")

cor(titanic_csv$Age, titanic_csv$Fare, method = "spearman",
    use = "complete.obs")

model<- lm(Fare~Age,data = Data)
abline(model,
       col = "green")
model

#===== Categorical graphs===#
Fare_table <- table(titanic_csv$Fare)
barplot(Fare_table,
        main = "Bar plot of Fare",
        xlab = "Price",
        ylab= " Distance",
        col = "green"
        
        )


barplot(log(Fare_table[titanic_csv$Fare]),
            main = "Bar plot of Fare",
            xlab = "Price",
            ylab= " Distance",
            col = "green" 
            )
pie(Fare_table, labels = paste(names(Fare_table)),
    col = "red"
    )

titanic_csv$Survived_lable<-factor(titanic_csv$Survived,
                                   levels = c(0,1),
                                   labels = c("Dead" ,"Survived")
                                   )
Survived_table<-table(titanic_csv$Survived_label)

library(plotrix)

pie3D(survived_table, 
      main = "3D pie of Dead and Survived",
      label = paste(names(survived_table)),
      round(100*survived_table/sum(survived_table),1), "%",
   explode = 0.1   )


?t.test
library(MASS)
summary(cabbages)
names(cabbages)
# H_0 : U_1= 2.84
#H_1 : U_2 < 2.84

t.test(cabbages$HeadWt, mu = 2.84, alternative = "less")
qt(0.05, 59)
# I reject H_0 since p-value is less that 0.05
# thus there is enough evidence to cpnclude that the mean of Head weight is less that 2.84kg


## When group variance are not equal welch's t-test

t.test(HeadWt~Cult, data = cabbages,
       
       )

t.test(anorexia$Prewt, anorexia$Postwt,
       paired = TRUE,
       alternative = "two.sided")

## H0 : U1= U2
#H1: U1!= U2
# i reject H0 since my p value is less than 0.05
## There is enough evidence to conclude that the mean of Pre treatment and post treament are not equal

qt(0.05, 71)# for left tailed 
qt(0.95, 71)#Right tailed 


##Anova comparing three or more groups mean.
 Crazy<-aov(Postwt~Treat, data =anorexia)
summary(Crazy)
plot(Crazy)



TukeyHSD(Crazy)



#Functions 

summary_stat<-function(x){
  list(
    n =length(x),
   mean = mean(x),
    median = median(x),
   maximum = max(x),
   Minimum = min(x),
   range = max(x) - min(x),
   Standard_deviation = sd(x),
   variance = var(x))
  
}

data<-c(23,4,34,45,65,65,98,13,32,43,54)
summary_stat(data)



Area_circle<-function(r){
  result = pi* r^2
  return(result)
}
Area_circle(5)
Area_rectangle<-function(L,W,B){
 list( length = L,
  Breath = B,
  Width = W
 )
  result = L*B*W 
   return(result)
}

Area_rectangle(12,34,56)

CIRCLE_MEASURE<-function(r){
  area = pi * r^2
  circumference = 2*pi*r
  list(Area =area, Circumference = circumference)
  
}

CIRCLE_MEASURE(16)



grade_student<-function(score){
  if(score >= 90){
    print("A")
    
  }else if(score >=80){
    print("B+")
  }else if (score >= 70){
    print("B")
  }else if (score >= 60){
    print("c+")
  }else if (score >= 50){
    print("D+")
  }else if (score >= 40){
    print("D")
  }else if (score <= 40){
    print("E")
  }else{
    print("F")
  }
}

grade_student(50)
grade_student(60)
grade_student(78)
grade_student(30)
grade_student(100)


student_summary<-function(name, score,grade_student){
  grades <- sapply(scores ,grade_student)
  data.frame(
    student = names,
    Grade = grade_student,
    score = scores,
    status= ifelse(score>=50,"PASS" , "FAIL")
  )
}
names<-c(" Ama", "Kofi", "Kwasi", "OBENG" ,"BENEDICT")
score<-c(43,50,67,-12, 100)
grade_student("D", "C", "E", " F")
student_summary(names,scores,grade_student)


loan_payment<-function(P,R,T){
  I = P*R*T
  total = P+I
  list(
    Interest = I,
    Total = total
  )
}
loan_payment(34,12,54)

## BMI 

classify_BMI<- function(weigth, higth){
  bmi = weigth / higth^2
  categories = if(bmi<1.85){
    print("Underweight")
  }else if (bmi <25){
    print("Normal weigth")
  }else if (bmi<30){print(
    "over Weigth"
  )}else{print(" obese")}
  list( BMI =round(bmi,2), Categories = categories)
}
classify_BMI(70,156)









