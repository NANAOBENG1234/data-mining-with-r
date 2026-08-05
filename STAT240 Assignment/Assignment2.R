# ================================================
# Assignment: Pie Charts, Bar Charts & Comments
# Variables: Sex, Cabin, Survived
# ================================================

# Install and load the plotrix package (needed for 3D pie charts)
# install.packages("plotrix")
library(plotrix)

# -------------------------------
# Prepare the Survived variable with actual labels
# -------------------------------
# 0 = Dead, 1 = Survived
file.choose()
titanic_csv<-read.delim("C:\\Users\\nana obeng\\Downloads\\Titanic-Dataset (1).csv")


titanic_csv$Survived_Label<-factor(titanic_csv$Survived,
                                     levels = c(0, 1),
                                     labels = c("Dead", "Survived"))

# =====================================================
# a) SEX
# =====================================================

## --- Bar Chart for Sex ---
sex_table <- table(titanic_csv$Sex)

barplot(sex_table,
        main = "Bar Chart of Passenger Sex",
        xlab = "Sex",
        ylab = "Number of Passengers",
        col = c("pink", "lightblue"))

## --- Pie Chart for Sex (2D) ---
pie(sex_table,
    main = "Pie Chart of Passenger Sex",
    col = c("pink", "lightblue"),
    labels = paste(names(sex_table), "-", round(100*sex_table/sum(sex_table), 1), "%"))

## --- Pie Chart for Sex (3D) ---
pie3D(sex_table,
      main = "3D Pie Chart of Passenger Sex",
      labels = paste(names(sex_table), "-", round(100*sex_table/sum(sex_table), 1), "%"),
      col = c("pink", "lightblue"),
      explode = 0.1)


# =====================================================
# b) CABIN
# =====================================================

## Cabin has a lot of missing values and too many unique cabin numbers
## to plot meaningfully on its own, so we first check this
table(titanic_csv$Cabin == "")     # counts empty/missing cabin entries
length(unique(titanic_csv$Cabin))  # number of unique cabin values

## Create a simplified variable: Has Cabin info or Not
titanic_csv$Cabin_Status <- ifelse(titanic_csv$Cabin == "" | is.na(titanic_csv$Cabin),
                                   "Missing", "Recorded")

cabin_table <- table(titanic_csv$Cabin_Status)

## --- Bar Chart for Cabin Status ---
barplot(cabin_table,
        main = "Bar Chart of Cabin Information Availability",
        xlab = "Cabin Status",
        ylab = "Number of Passengers",
        col = c("orange", "purple"))

## --- Pie Chart for Cabin Status (2D) ---
pie(cabin_table,
    main = "Pie Chart of Cabin Information Availability",
    col = c("orange", "purple"),
    labels = paste(names(cabin_table), "-", round(100*cabin_table/sum(cabin_table), 1), "%"))

## --- Pie Chart for Cabin Status (3D) ---
pie3D(cabin_table,
      main = "3D Pie Chart of Cabin Information Availability",
      labels = paste(names(cabin_table), "-", round(100*cabin_table/sum(cabin_table), 1), "%"),
      col = c("orange", "purple"),
      explode = 0.1)


# =====================================================
# c) SURVIVED (with actual labels: Dead / Survived)
# =====================================================

survived_table <- table(titanic_csv$Survived_Label)

## --- Bar Chart for Survival ---
barplot(survived_table,
        main = "Bar Chart of Passenger Survival",
        xlab = "Survival Status",
        ylab = "Number of Passengers",
        col = c("red", "green"))

## --- Pie Chart for Survival (2D) ---
pie(survived_table,
    main = "Pie Chart of Passenger Survival",
    col = c("red", "green"),
    labels = paste(names(survived_table), "-", round(100*survived_table/sum(survived_table), 1), "%"))

## --- Pie Chart for Survival (3D) ---
pie3D(survived_table,
      main = "3D Pie Chart of Passenger Survival",
      labels = paste(names(survived_table), "-", round(100*survived_table/sum(survived_table), 1), "%"),
      col = c("red", "green"),
      explode = 0.1)
