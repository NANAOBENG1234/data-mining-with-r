

#STAT 240 Assignment 
#Name : AGYEMAN BENEDICT NANA OBENG
#Index number : 22395054


#PQUESTION 1
# creating vector ages and calling the vector ages 
#a)

ages <-c(19,21,20,22,19,23,21,20)

#Output
#   [1] 19 21 20 22 19 23 21 20

#B)
length(ages)
#output :8
mean(ages)
#output :  20.625
min(ages)
#output : 19
max(ages)
#output : 23 


# C) Logical vector 
 Old_student <- ages >20
#output : [1] FALSE  TRUE FALSE  TRUE FALSE [6]  TRUE  TRUE FALSE
#ages greater than 20  
# 21,22,23,21

 
 #D)
 
 ages[Old_student]
#Output :  [1] 21 22 23 21
 
 #E)
 sort(ages, decreasing = TRUE)
#Output : [1] 23 22 21 21 20 20 19 19
 
 
 
 #  QUESTION 2
 #A)
  x <- c( 4, 8, 15, 16, 23, 42)
  y <- 1:6 
  
  #a).
  x+y
  #output : [1]  5 10 18 20 28 48

  x*y
  #output :[1]   4  16  45  64 115 252

  x %% y
  
  #output : [1] 0 0 0 0 3 0
  
  #2B naming elements
  
   names(x) <- c("a", "b", "c", "d", "e","f")
   #Output :  names(x) <- c("a", "b", "c", "d", "e","f")
   x["d"]
   # Output : 16 
  
   #C) 
   main <-seq(1,9, by=2 )
   #Output : [1] 1 3 5 7 9
   rep(main, times=2)
  #Output :  [1] 1 3 5 7 9 1 3 5 7 9
   
  
  
   
   #QUESTION 3
 #A)   
Drivers<- matrix(c(12, 15, 9,14,
                   10,11,13,8,
                   16,9,12,10 ),
           nrow=3,  byrow = TRUE )
  
#Output : 
#[,1] [,2] [,3] [,4]
#[1,]   12   15    9   14
#[2,]   10   11   13    8
#[3,]   16    9   12   10

#B)

rownames(Drivers) <- c("Driver1" ," Driver2"," Driver3")
colnames(Drivers) <- c( "Mon", "Tues", " Wed", " Thu")
#Output :         Mon Tues  Wed  Thu
#Driver1  12   15    9    14
#Driver2  10   11   13     8
#Driver3  16    9   12    10

#C)
rowSums(Drivers)
#Output :       50       42       47 
colSums(Drivers)
#Output :    38    35    34    32 


#D)
Drivers[2,3]
#Output : [1] 13
 
#E)

t(Drivers)
#Output :    Driver1  Driver2  Driver3
#Mon         12       10       16
#Tues        15       11        9
#Wed         9       13       12
#Thus       14        8       10



#QUESTION 4 
#A)
Patient <- data.frame(
  Age = c("34" , "28" , "45", "NA", "52" ),
  Gender = c("M", "F", "F", "M", "F" ),
  BloodType = c("A", "O", "B", "AB", "O" ),
  Recovered = c("TRUE", "FALSE", "TRUE", "TRUE", "NA"),
  row.names =c("P1","P2","P3","P4","P5")
)
  
  
  Patient 
 #Output :  
#Age Gender BloodType Recovered
# 1  34      M         A      TRUE
# 2  28      F         O     FALSE
# 3  45      F         B      TRUE
# 4  NA      M        AB      TRUE
# 5  52     F      O        NA



#B)
str(Patient)
#OUTPUT : 
#'data.frame':	5 obs. of  4 variables:
#  $ Age      : chr  "34" "28" "45" "NA" ...
#$ Gender   : chr  "M" "F" "F" "M" ...
#$ BloodType: chr  "A" "O" "B" "AB" ...
#$ Recovered: chr  "TRUE" "FALSE" "TRUE" "TRUE" ...

summary(Patient)
#Age               Gender         
#Length:5           Length:5          
#Class :character   Class :character  
#Mode  :character   Mode  :character  
#BloodType          Recovered        
#Length:5           Length:5          
#Class :character   Class :character  
#Mode  :character   Mode  :character

#C)
Patient$Age
#Output : [1] "34" "28" "45" "NA" "52"
Patient[, "Age"]
#Output : [1] "34" "28" "45" "NA" "52"


# D)  ADDING COLUMN
Patient$AgeGroup <- ifelse( Patient$Age < 40, "Young", "Old" )
#Output : 
#[1] "Young" "Young" "Old"   "Old"   "Old"

#E)
Patient[Patient$Gender == "F" & Patient$Recovered == TRUE,]

#Output :  Age Gender BloodType Recovered AgeGroup
#           3  45      F         B      TRUE      Old



#QUESTION 6
  Satisfactory <- c("Low", "High", "Medium", "Medium" , "Low", "High", "High", "Medium", "Low", "Medium")
      Sat_factor <- factor(Satisfactory, levels = c("Low", "Medium", "High" ),  ordered = TRUE )
      
      #OUTPUT : > Sat_factor
      #[1] Low    High   Medium Medium Low    High   High   Medium Low    Medium
      #Levels: Low < Medium < High
      
  
  #6B 
  levels(Sat_factor)
  
  #Output : >   levels(Sat_factor)
 # [1] "Low"    "Medium" "High"  
  
  table(Sat_factor)
  #output : >   table(Sat_factor)
 # Sat_factor
 # Low Medium   High 
 # 3      4      3 
  #C)
  Sat_factor > "Low"
  #Output :  Sat_factor > "Low"
 # [1] FALSE  TRUE  TRUE  TRUE FALSE  TRUE  TRUE  TRUE
 # [9] FALSE  TRUE
  
  #Reason : This only makes sense because the factor is ordered and also R know the Low < Medium < High , but for unordered factor > will throw and error message
  
  #D) CONVERTING A FACTOR BACK OUT 
   as.character(Sat_factor)
   #Output :   as.character(Sat_factor)
  # [1] "Low"    "High"   "Medium" "Medium" "Low"   
  # [6] "High"   "High"   "Medium" "Low"    "Medium"
  
    as.numeric(Sat_factor)
    #Output :    as.numeric(Sat_factor)
   # [1] 1 3 2 2 1 3 3 2 1 2
    
    #COMMENT : the numeric code are just the position of each value's catergory within levels but not the original data .
    
    
    
    
# QUESTION 7
    
 #A)   
    scores <- c(72, 85, NA, 90, 68, NA, 77, 95)
    
    is.na(scores)
    #Output : >     is.na(scores)
    #[1] FALSE FALSE  TRUE FALSE FALSE  TRUE FALSE FALSE
    
    
    sum(is.na(scores))
    #output : [1] 2
    
    
    # B) MEAN WITH AND WITHOUT na.rm
    
    mean(scores)
    #Output : >     mean(scores)
             #[1] NA
    
    mean(scores, na.rm =TRUE)
    #Output : >     mean(scores, na.rm =TRUE)
                # [1] 81.16667
    
    # comment : without the na.rm Rcan't be sure how to treat the mising values, so it returns NA instaed of a result .
    
    
    # D) 
    
    scores_clean <- scores[!is.na(scores)]
  
    scores_clean <- na.omit(scores)
    
    
    # E) Mean imputation
       scores_imputed <- scores
       scores_imputed[is.na(scores_imputed)] <- mean(scores, na.rm =TRUE)
       scores_imputed
    #Output :  scores_imputed
      # [1] 81.16667 81.16667       NA 81.16667 81.16667
      # [6]       NA 81.16667 81.16667
       
       #Comment : this computes the mean for all the present values leaving NA untouched and place the means in the right positions .
       
       
       
    
    