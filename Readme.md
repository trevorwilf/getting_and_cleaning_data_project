# Coursera: Getting and Cleaning Data Course Project

 This project is for the Coursera: Getting and Cleaning Data Course.  For more information on the course please go to:
 [https://www.coursera.org/course/getdata](https://www.coursera.org/course/getdata)

## File Descriptions
|Filename | Description|
|------|------|
|[./run_analysis.R](https://github.com/trevorwilf/getting_and_cleaning_data_project/blob/master/run_analysis.R)| Contains the R code that will clean up the data located in the "UCI HAR Dataset" folder and create secondary data set with the average of each variable for each activity and each subject.
|[./secondary.data.set.txt](https://github.com/trevorwilf/getting_and_cleaning_data_project/blob/master/secondary.data.set.txt)|Contains the secondary data set. Formatted as a text file.
|[./secondary.data.set.csv](https://github.com/trevorwilf/getting_and_cleaning_data_project/blob/master/secondary.data.set.csv)|Contains the secondary data set. Formatted as a csv.
|[./codebook.md](https://github.com/trevorwilf/getting_and_cleaning_data_project/blob/master/codebook.md)|Contains a table that shows the column names of the secondary data set.
|[./getdata-projectfiles-UCI HAR Dataset.zip](https://github.com/trevorwilf/getting_and_cleaning_data_project/blob/master/getdata-projectfiles-UCI%20HAR%20Dataset.zip)| Contains the raw data set zipped
|[./UCI HAR Dataset/README.txt](https://github.com/trevorwilf/getting_and_cleaning_data_project/blob/master/UCI%20HAR%20Dataset/README.txt)| Read me about the raw data set
|[./UCI HAR Dataset/features_info.txt](https://github.com/trevorwilf/getting_and_cleaning_data_project/blob/master/UCI%20HAR%20Dataset/features_info.txt)| Shows information about the variables used on the feature vector.
|[./UCI HAR Dataset/features.txt](https://github.com/trevorwilf/getting_and_cleaning_data_project/blob/master/UCI%20HAR%20Dataset/features.txt)|List of all features.
|[./UCI HAR Dataset/activity_labels.txt](https://github.com/trevorwilf/getting_and_cleaning_data_project/blob/master/UCI%20HAR%20Dataset/activity_labels.txt)|Links the class labels with their activity name.
|[./UCI HAR Dataset/train/X_train.txt](https://github.com/trevorwilf/getting_and_cleaning_data_project/blob/master/UCI%20HAR%20Dataset/train/X_train.txt)|Training set.
|[./UCI HAR Dataset/train/y_train.txt](https://github.com/trevorwilf/getting_and_cleaning_data_project/blob/master/UCI%20HAR%20Dataset/train/y_train.txt)|Training labels.
|[./UCI HAR Dataset/train/subject_train.txt](https://github.com/trevorwilf/getting_and_cleaning_data_project/blob/master/UCI%20HAR%20Dataset/train/subject_train.txt)|Each row identifies the subject who performed the activity.
|[./UCI HAR Dataset/test/X_test.txt](https://github.com/trevorwilf/getting_and_cleaning_data_project/blob/master/UCI%20HAR%20Dataset/test/X_test.txt)|Test set.
|[./UCI HAR Dataset/test/y_test.txt](https://github.com/trevorwilf/getting_and_cleaning_data_project/blob/master/UCI%20HAR%20Dataset/test/y_test.txt)|Testing labels.
|[./UCI HAR Dataset/test/subject_test.txt](https://github.com/trevorwilf/getting_and_cleaning_data_project/blob/master/UCI%20HAR%20Dataset/test/subject_test.txt)|Each row identifies the subject who performed the activity for each window sample.

## Notes about how run_analysis.R works
The R file is documented in the code.  This will provide a over view.

### Dependenant Libraries
tidyr, dplyr, data.table, reshape2

### Overview
#### Part 1
1. Read in the tables for the x_train, y_train, x_test, y_test, subject_train, subject_test text files (this is part of goal list 1 referenced below) ([link to goal list](https://github.com/trevorwilf/getting_and_cleaning_data_project/blob/master/Readme.md#goal-list))
	1.  Row bind x_train & x_test
	2.  Row bind y_train & y_test
	3.  Row bind subject_train & subject_test
2. Now that the respective tables in each set have been added to each other, we can start adding column names (this is part of goal list 3 & 4 referenced below)([link to goal list](https://github.com/trevorwilf/getting_and_cleaning_data_project/blob/master/Readme.md#goal-list))
	1. Rename collumns in the y table and cbind with subject table
	2. Rename collumns in the x table based on features.txt file
		1. collumns need to be cleaned first by making lower case, removing non alpha numeric characters, converting spaces to underscores 
3. Column bind the x and y tables
4. Merge in the activity labels to make it readable
5. Finally, re-arrange the collumns so that the user information and test are at the beginning of the collumns
6. Perform clean up of data frames that we no longer need

##### Part 2
The second part of the script deals with creating the new data set based on the one created in Part 1.  This is part of goal list 2 and 5.([link to goal list](https://github.com/trevorwilf/getting_and_cleaning_data_project/blob/master/Readme.md#goal-list))

1.	Extract out the relevant collumns as explained in goal list referenced below (goal 2)
	1.	Extract out Subject information, Activity labels, and all collumns dealing with mean or standard deviation for each observation	
2.	Group data frame by subject and activity
3.	summarise the mean for each observation (both mean and standard deviation observatins)
4.	write out put to a file


## About the Data
Excerpt taken from the README.txt in the dataset
([link to Readme](https://github.com/trevorwilf/getting_and_cleaning_data_project/blob/master/UCI%20HAR%20Dataset/README.txt))

The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain. See 'features_info.txt' for more details. 


## Instructions from the class

The purpose of this project is to demonstrate your ability to collect, work with, and clean a data set. The goal is to prepare tidy data that can be used for later analysis. You will be graded by your peers on a series of yes/no questions related to the project. You will be required to submit: 
1. a tidy data set as described below, 
2. a link to a Github repository with your script for performing the analysis
3. a code book that describes the variables, the data, and any transformations or work that you performed to clean up the data called CodeBook.md. 

You should also include a README.md in the repo with your scripts. This repo explains how all of the scripts work and how they are connected.  

### Overview:
One of the most exciting areas in all of data science right now is wearable computing - see for example this article . Companies like Fitbit, Nike, and Jawbone Up are racing to develop the most advanced algorithms to attract new users. The data linked to from the course website represent data collected from the accelerometers from the Samsung Galaxy S smartphone. A full description is available at the site where the data was obtained: 

[http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones)

Here are the data for the project: 

[https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip](https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip)

#### You should create one R script called run_analysis.R that does the following. 
##### Goal list
1. Merges the training and the test sets to create one data set.
2. Extracts only the measurements on the mean and standard deviation for each measurement. 
3. Uses descriptive activity names to name the activities in the data set
4. Appropriately labels the data set with descriptive variable names. 
5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

## Citation/Licensing:
Use of the "Human Activity Recognition Using Smartphones Dataset" in publications must be acknowledged by referencing the following publication [1] 

[1] Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine. International Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012

This dataset is distributed AS-IS and no responsibility implied or explicit can be addressed to the authors or their institutions for its use or misuse. Any commercial use is prohibited.

Jorge L. Reyes-Ortiz, Alessandro Ghio, Luca Oneto, Davide Anguita. November 2012.
