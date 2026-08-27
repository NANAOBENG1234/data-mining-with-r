study_hours<-c(2,5,3,8,6,4,10,1)
length(study_hours)
mean(study_hours)
median(study_hours)
min(study_hours)
max(study_hours)


study_summary<-function(names,study_hours){
  ifelse(hours>5, "PASS ", "FAIL")
  data.frame(
    student = names,
    hours =study_hours,
    status<-c( "PASS","FAIL")
  )
}
names<-c("Kofi", "kwasi", "Yaa" , "Obeng")
study_hours(2,5,3,8,6,4,10,1)
study_summary(names, study_hours)


x<-seq(10,50, by= 5 )

x<-rep(x, times = 3)
x

patient<-data.frame(
  Ages<-c(19,22,31,NA,27),
  Gender<-c("F","M","M","F" ,"M"),
  Recovered<-c("TRUE","TRUE","FALSE","TRUE","NA")
  
  
)


str(patient)
summary(patient)
is.na(Ages)
mean(Ages, na.rm = TRUE)


Age_group<-function(Ages){
  ifelse(Ages < 25, "young", "Older")
}
Age_group(23)
Age_group(50)



file.choose(
)
titanic_csv<-read.csv("C:\\Users\\Nana Obeng\\Downloads\\Titanic-Dataset.csv")
titanic_csv

dim(titanic_csv)
names(titanic_csv)

mean(titanic_csv$Fare)
median(titanic_csv$Fare)

sd(titanic_csv$Fare)
IQR(titanic_csv$Fare)



hist(titanic_csv$Fare, 
     main=" Histogram of Fare  ",
     xlab = "Fare",
     ylab = "Number of Passengers",
     col = "red")


boxplot(titanic_csv$Fare, 
        main=" Histogram of Fare  ",
        col="blue")
sex_table<-table(titanic_csv$Sex)
barplot(sex_table, 
        main= " Bar chart for sex",
        col= "green")



  pie(sex_table, 
      main= " Bar chart for sex",
      col= c("green","red"),
      label= names(sex_table),round(sex_table, 2))


## MOre common category is Male

 survive_table<-table(titanic_csv$Survived)
  
  barplot(survive_table, main = " Barplot of Survive againt Dead")
  
  
  
plot(titanic_csv$Age, titanic_csv$Fare,
     Main ="Scatter diagram of Ages And Fare",
     xlab = "Age",
     ylab = "Fare",
     col = "red",
     abline(
       col= "green"
     )
     )
model<-lm(Fare~Age, data= titanic_csv)
abline(model, col = "green")


cor(titanic_csv$Age, titanic_csv$Fare, use = "complete.obs")
cor(titanic_csv$Age, titanic_csv$Fare, method = "pearson", use="complete.obs")





  
file.choose()
Exam_prediction<-read.csv("C:\\Users\\Nana Obeng\\Downloads\\Exam_Score_Prediction.csv")
Exam_prediction

names(Exam_prediction)
summary(Exam_prediction)
dim(Exam_prediction)

plot(Exam_prediction$study_hours, Exam_prediction$sleep_hours,
     main = "Scatter diagram of Study hours and sleep hours",
     col = "red",
     xlab= " Study hours",
     ylab= " Sleephours")

#+===================== test 2 +==============#
#+
library(iris)
summar(iris)
names(iris)
summary(iris)

tab1<-table(iris)


##Ploting a scatter daigram since the  we are interested in the relationship betwwen two numeric variable
 plot(iris$Sepal.Length,iris$Petal.Length, main = " A scatter plot of sepal length and petal length",
      xlab = " Sepal length",
      ylab = " Petal length",
      col = "red",
        abline(lm(Petal.Length~Sepal.Length, data = iris)
               ))
      
      cor(iris$Sepal.Length,iris$Petal.Length)
 #from the correlation value the is a sstrong relationship betwwen sepal length and petal length
 
      #  at signifi =0.05,
      #using paired t test
     t.test(iris$Sepal.Length,iris$Petal.Length, alternative = "two.sided", paired = TRUE)
    TAB2<-aov(Sepal.Length~Petal.Length, data = iris)
TAB2
summary(TAB2)
 # SINCE THE P VALUSE IS LESS THAN THE SIGNIFICANT VALUE , WE REJECT NULL HYPOTHESIS,
# SINCE ANNOVA ONLY POINT TO A DIFFERENCE IN THE MEAN WE PERFORM POST HOC USING TukeyHSD

hist(iris$Petal.Length)
boxplot(iris$Petal.Length,
        horizontal = TRUE)

## the distribution is positively skiwed
#
table(iris$Petal.Length)
#because bar plot is for categorical variables


library(ToothGrowth)
names(len)

library(MASS)
summary(anorexia)
str(anorexia)
names(anorexia)
hist(anorexia$Postwt)
qqnorm(anorexia$Postwt,
       )
boxplot(anorexia$Postwt)


Tab4<-shapiro.test(anorexia$Postwt)
summary(Tab4)
# we fail to reject the h0 hypothesis


#Performing a PAIRED T TEST
#H0_:U1 = U2
#H1_:U1!=U2
#AT a=0.05

t.test(anorexia$Prewt,anorexia$Postwt, Alternative= "two.sided", paired = TRUE)
#SINCE THE P VALUE IS KLESS THAN THE A VALUE WE REJECT NULL HYPOTHESIS
#PERFOMING POSTZ_HOC


# since the 2 data are not independent




boxplot()



library(PlantGrowth)












