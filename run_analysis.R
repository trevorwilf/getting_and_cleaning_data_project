#########################
## Author: Trevor
## Date: 7/14/2015
#########################
# dependencies
library(tidyr)
library(dplyr)
library(data.table)
library(reshape2)

####################
# set working directory
setwd("C:\\github\\getting_and_cleaning_data_project")

####################
## download the data set and extract it
download.file("https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip", "getdata-projectfiles-UCI HAR Dataset.zip")
unzip("getdata-projectfiles-UCI HAR Dataset.zip")

####################
# get data sets and combine test and train data sets
xtrain <- read.table(".\\UCI HAR Dataset\\train\\X_train.txt")
ytrain <- read.table(".\\UCI HAR Dataset\\train\\y_train.txt")
xtest <- read.table(".\\UCI HAR Dataset\\test\\X_test.txt")
ytest <- read.table(".\\UCI HAR Dataset\\test\\y_test.txt")
trainsubject <- read.table(".\\UCI HAR Dataset\\train\\subject_train.txt") 
testsubject <- read.table(".\\UCI HAR Dataset\\test\\subject_test.txt")

subject <- rbind(trainsubject, testsubject)
xall <- rbind(xtrain, xtest)
yall <- rbind(ytrain, ytest)

####################
# combine subject and Y data frame
# first rename subject column
colnames(subject)[names(subject) == "V1"] <- "subjectnum"
# combine the subjects table to the y table
yall <- cbind(subject, yall)

####################
# assign collumn names x data frame
collumnname <- readLines(".\\UCI HAR Dataset\\features.txt")
#cleaning up names 
collumnname <- tolower(collumnname)
collumnname <- gsub("[()]|-|,", "", collumnname)
collumnname <- gsub(" ", "_", collumnname)
collumnname <- gsub("bodybody", "body", collumnname)
colnames(xall) <- collumnname

####################
# add activity column
activitylabel <- read.table(".\\UCI HAR Dataset\\activity_labels.txt")
# combine x and y data frame
all <- cbind(yall, xall)
# rename activity to something more friendly
colnames(all)[names(all) == "V1"] <- "activitynum"
# merge in the activity table
all <- merge(all, activitylabel, by.x = "activitynum", by.y = "V1")
colnames(all)[names(all) == "V2"] <- "activitylabel"
#arrange columns in a nice way
all <- select(all, 2, 564, 1, everything())

####################
# all of the tables should be combined at this point 
# with descriptive names for the vectors and activities
####################
# cleanup unused data frames from memory
rm(xtrain)
rm(xall)
rm(xtest)
rm(yall)
rm(ytest)
rm(ytrain)
rm(subject)
rm(testsubject)
rm(trainsubject)
rm(activitylabel)
rm(collumnname)

####################
## This starts the second part of the assignement
## create a new tidy data set
####################
#extract out the activitylabel, subjectnum, mean and std columns
dfmeanstd <- all[, grepl(pattern = "mean|std|activitylabel|subjectnum", names(all))]

####################
# group by subject then activity, then calculate mean on each
result <- group_by(dfmeanstd, subjectnum, activitylabel) %>% summarise_each(funs(mean))

####################
# output to a csv file
write.csv(result, file = "secondary.data.set.csv", row.names = FALSE)
write.table(result, file = "secondary.data.set.txt", row.names = FALSE)











