library(tidyverse)
library(psych)
library('caret') # classification and regression training/model creation

# Show files available for input
list.files(path = ".")

# Read model training files and
# set the data types on the fly
train <- read.csv('train/train.csv',
                  header = TRUE, stringsAsFactors = FALSE,
                  colClasses = c("factor", "character", "integer", 
                                 "factor", "factor", "factor", "factor","factor", 
                                 "factor", "factor", "factor", "factor","factor",
                                 "factor", "factor", "integer", "integer","factor", 
                                 "character", "numeric", "character", "character","numeric",
                                 "factor"))
# Type,Name,Age,
# Breed1,Breed2,Gender,Color1,Color2,
# Color3,MaturitySize,FurLength,Vaccinated,Dewormed,
# Sterilized,Health,Quantity,Fee,State,
# RescuerID,VideoAmt,Description,PetID,PhotoAmt,
# AdoptionSpeed

# test  <- read.csv('test/test.csv')


# Data tructure of training dataset
str(train)
# Summary stats for each attribute
summary(train)
sapply(train, function(x) sum(is.na(x)))

# Show counts of empty and non-empty character fields
# since this is not indicated in summary stats
message("Name empty count :",sum(train$Name == ""))
message("Description empty count :",sum(train$Description == ""))
message("PetID empty count :",sum(train$PetID == ""))

#describe.by(train,train$Type)

