# Is there any difference in fares by different class of tickets?
#Note - Show a boxplot displaying the distribution of fares by class

library("readr")
TitanicData <- read.csv("E:/munmun_acadgild/acadgild data analytics/supporting files/titanic3.csv")
View(TitanicData)
str(TitanicData)

colnames(TitanicData) <- c("Pclass","Survived","Name","Sex","Age","SibSp","Parch","Ticket","Fare",
                           "Cabin","Embarked","Boat","Body","destination")

Titanic <- TitanicData %>% mutate(Pclass = as.factor(Pclass))  # Passennger class as factor
str(Titanic)
View(Titanic)

boxplot(Fare~Pclass, data = Titanic, col = topo.colors(3),
        xlab = "Class of Ticket", ylab = "Fares", main = "Fares by different Class of Tickets")


# b. Is there any association with Passenger class and gender?
# Note - Show a stacked bar chart

A <- table(Titanic$Sex, Titanic$Pclass)
A
bp <- barplot(A, col= rainbow(length(A)), legend = rownames(A),
              main = "Passenger class and gender",
              xlab = "Class of Ticket", ylab = "No. of Passangers by Gender")

