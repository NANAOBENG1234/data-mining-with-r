
?read.csv
file.choose()
titanic_csv <- read.csv("C:\\Users\\KC-User\\Downloads\\Titanic-Dataset.csv")

## Text file
titanic_text <- read.delim("C:\\Users\\KC-User\\Downloads\\Titanic-Dataset.txt")
read_excel()
names(titanic_text )
dim(titanic_text )
str(titanic_text)

##summary
mean(titanic_text$Fare)
sum(is.na(titanic_text$Fare))
summary(titanic_text$Fare)
?iqr
IQR(titanic_text$Fare)

#plots
?plot #"Univariate BIVARIATE"
## UNIVARIATE GRAPHS
?hist             
hist(titanic_text$Fare, 
     main = "Histogram for Titanic Fare" ,
     xlab = "Fare (in USD)",
     ylab = "Number of passengers",
     xlim = c(0,600),
     ylim = c(0,800),
     col  ="turquoise")

hist(log(titanic_text$Fare), 
     main = "Histogram for Titanic Fare" ,
     xlab = "Fare (in USD)",
     ylab = "Number of passengers",
     xlim = c(0,10),
     ylim = c(0,300),
     col  ="turquoise")

?boxplot
boxplot(titanic_text$Fare, main = "Boxplot for Fare", ylab = "Fare (in USD)", col = "turquoise",pch = 2, horizontal = T)
dat <- titanic_text$Fare[titanic_text$Fare <= 50]
hist(dat)
boxplot(dat)



plot(titanic_text$Age ,titanic_text$Fare,
     pch =5, 
     col = "blue",
     xlab ="age",
     ylab = "Fare",
     lwd = 1,## LINE WIDTH
     
     main = "Scatter plot of Age aginst \n Fare",
     sub =" Linear Association",
     )


## TO FIND THE CORRELATION
 cor(titanic_text$Age,
     titanic_text$Fare,na.rm = TRUE)
 
 ## Line of  Best fit 
 ?lm
 abline(lm(Fare~Age,
           data = titanic_text ))
 abline(h = 250)
 abline()
 

 library(MASS)
names(cabbages)
?cabbages
  plot(cabbages$HeadWt, cabbages$VitC,
        main = "Scatter plot for HeadWt Against \n  VitC ",
       sub = "Linear Association",
        col =  "red",
        xlab = "Weight of Cabbage Head ",
        ylab = "Ascorbic Acid Content " )
  abline(lm(VitC~HeadWt, data=cabbages),
         
         col = "black")
  cor(cabbages$HeadWt,cabbages$VitC)
  
  ## Bivariate Graph 
 ?boxplot
  boxplot(cabbages$VitC~cabbages$Cult,
         col = rainbow(2),
         main = " Association between Culture",
         xlab ="Cult",
         ylab = "VitC",
         horizontal= TRUE
         )
##Categorical Variables   
  #-- Plots---##
  ## 1 ).pie  chart, 2. Bar chart
names(titanic_text)  
titanic_text$Sex 


?tabel
Tab1<-table(titanic_text$Sex)

pie(Tab1, col=c("red", "green"))

##bar chart

barplot(Tab1, col=c("red", "green"))

#For the titanic dataset Construct
##1. Pie Chart ,2. Bar Chart, FOR THE FOLLOWIN VARIABLEs a).Sex, b). Cabin , c). Survival

## For the survival Variable , display the actua;l labels . 
##NOTE 0= dead, 1 = Survive

## 2). For the pie Charts 3D
#version 
#3).
#Comment on all graphs in the context of the titanic data 
## 













# Assignment: Pie Charts, Bar Charts & Comments
# Variables: Sex, Cabin, Survived



# install.packages("plotrix")
library(plotrix)

# Prepare the Survived variable with actual labels

titanic_csv$Survived_Label <- factor(titanic_csv$Survived,
                                     levels = c(0, 1),
                                     labels = c("Dead", "Survived"))


# a) SEX


##  Bar Chart for Sex 
sex_table <- table(titanic_csv$Sex)

barplot(sex_table,
        main = "Bar Chart of Passenger Sex",
        xlab = "Sex",
        ylab = "Number of Passengers",
        col = c("pink", "lightblue"))

##  Pie Chart for Sex (2D) 
pie(sex_table,
    main = "Pie Chart of Passenger Sex",
    col = c("pink", "lightblue"),
    labels = paste(names(sex_table), "-", round(100*sex_table/sum(sex_table), 1), "%"))

## Pie Chart for Sex (3D) 
pie3D(sex_table,
      main = "3D Pie Chart of Passenger Sex",
      labels = paste(names(sex_table), "-", round(100*sex_table/sum(sex_table), 1), "%"),
      col = c("pink", "lightblue"),
      explode = 0.1)



# b) CABIN



table(titanic_csv$Cabin == "")     # counts empty/missing cabin entries
length(unique(titanic_csv$Cabin))  # number of unique cabin values

## Create a simplified variable: Has Cabin info or Not
titanic_csv$Cabin_Status <- ifelse(titanic_csv$Cabin == "" | is.na(titanic_csv$Cabin),
                                   "Missing", "Recorded")

cabin_table <- table(titanic_csv$Cabin_Status)

## Bar Chart for Cabin Status 
barplot(cabin_table,
        main = "Bar Chart of Cabin Information Availability",
        xlab = "Cabin Status",
        ylab = "Number of Passengers",
        col = c("orange", "purple"))

##  Pie Chart for Cabin Status (2D) 
pie(cabin_table,
    main = "Pie Chart of Cabin Information Availability",
    col = c("orange", "purple"),
    labels = paste(names(cabin_table), "-", round(100*cabin_table/sum(cabin_table), 1), "%"))

##  Pie Chart for Cabin Status (3D)
pie3D(cabin_table,
      main = "3D Pie Chart of Cabin Information Availability",
      labels = paste(names(cabin_table), "-", round(100*cabin_table/sum(cabin_table), 1), "%"),
      col = c("orange", "purple"),
      explode = 0.1)



# c) SURVIVED (with actual labels: Dead / Survived)


survived_table <- table(titanic_csv$Survived_Label)

##  Bar Chart for Survival 
barplot(survived_table,
        main = "Bar Chart of Passenger Survival",
        xlab = "Survival Status",
        ylab = "Number of Passengers",
        col = c("red", "green"))

##  Pie Chart for Survival (2D) 
pie(survived_table,
    main = "Pie Chart of Passenger Survival",
    col = c("red", "green"),
    labels = paste(names(survived_table), "-", round(100*survived_table/sum(survived_table), 1), "%"))

##  Pie Chart for Survival (3D) 
pie3D(survived_table,
      main = "3D Pie Chart of Passenger Survival",
      labels = paste(names(survived_table), "-", round(100*survived_table/sum(survived_table), 1), "%"),
      col = c("red", "green"),
      explode = 0.1)

