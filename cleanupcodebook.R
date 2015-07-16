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

result <- read.csv(".\\secondary.data.set.csv")

collumnnames <- names(result)
collumnnames <- gsub("^[Xx]", "", collumnnames)
collumnnames2 <- tolower(collumnnames)
collumnnames2 <- gsub("^[0-9]*_", "", collumnnames2)

collumnnames2 <- gsub("fbodyacc", " frequency body acceleration signal ", collumnnames2)
collumnnames2 <- gsub("tbodyacc", " time body acceleration signal ", collumnnames2)
collumnnames2 <- gsub("fgravityacc", " frequency gravity acceleration signal ", collumnnames2)
collumnnames2 <- gsub("tgravityacc", " time gravity acceleration signal ", collumnnames2)
collumnnames2 <- gsub("fbodygyro", " frequency body gyroscope signal ", collumnnames2)
collumnnames2 <- gsub("tbodygyro", " time body gyroscope signal ", collumnnames2)

collumnnames2 <- gsub("[[:space:]]mag|mag", " magnitude ", collumnnames2)
collumnnames2 <- gsub("[[:space:]]mean|mean", " mean ", collumnnames2)
collumnnames2 <- gsub("[[:space:]]std|std", " standard deviation ", collumnnames2)

collumnnames2 <- gsub("[[:space:]]x$|x$", " x axis", collumnnames2)
collumnnames2 <- gsub("[[:space:]]y$|y$", " y axis", collumnnames2)
collumnnames2 <- gsub("[[:space:]]z$|z$", " z axis", collumnnames2)
collumnnames2 <- gsub("[[:space:]]freq[[:space:]]", " frequency ", collumnnames2)

collumnnames2 <- gsub("anglexgravity[[:space:]]", " angle x axis gravity ", collumnnames2)
collumnnames2 <- gsub("anglexgravity[[:space:]]", " angle x axis gravity ", collumnnames2)
collumnnames2 <- gsub("anglexgravity[[:space:]]", " angle x axis gravity ", collumnnames2)

collumnnames2 <- gsub("subjectnum", "Subjects assigned number", collumnnames2)
collumnnames2 <- gsub("activitylabel", "Activity related to the test", collumnnames2)

collumnnames2 <-  gsub("^[[:space:]]", "", collumnnames2)
collumnnames2 <-  gsub("[[:space:]]$", "", collumnnames2)

collumnnames <- data.frame(collumnnames)
collumnnames2 <- data.frame(collumnnames2)
codebook <- cbind(collumnnames, collumnnames2)

write.csv(codebook, file = "codebook.md")

