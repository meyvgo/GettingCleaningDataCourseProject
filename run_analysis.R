## This script works with the UCI Human Activity Recognition Using Smartphones Data Set
## which is found here: https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip
## As input it assumes the files from above are unzipped and the "test" and "train" directories are in a "data" directory.
## As output it produces a tidy data set with the average of each variable for each activity and each subject

## Load necessary libraries
library(dplyr)

## Read the training set files and combine into one data set
X_train<-read.table("./data/train/X_train.txt") ## read the training set measurements
Y_train<-read.table("./data/train/Y_train.txt") ## read the training activity labels
Subject_train<-read.table("./data/train/subject_train.txt") ## read the training subject data
train_data<-cbind(activity=Y_train$V1, subject=Subject_train$V1, X_train)

## Read the test set files and combine into one data set
X_test<-read.table("./data/test/X_test.txt") ## read the test set measurements
Y_test<-read.table("./data/test/Y_test.txt") ## read the test activity labels
Subject_test<-read.table("./data/test/subject_test.txt") ## read the test subject data
test_data<-cbind(activity=Y_test$V1, subject=Subject_test$V1, X_test)

## Create a merged data set
all_data<-rbind(train_data, test_data)

## Extract only the measurements on the mean and standard deviation for each measure
variable_names<-read.table("./data/features.txt") ## Read descriptive names
find_mean_and_std<-grepl("mean\\(\\)|std\\(\\)", variable_names$V2) ## Determine which names include "mean" or "std"
cols_to_extract<-c(TRUE, TRUE, find_mean_and_std) ## Make sure "activity" and "subject" columns don't get lost
mean_and_std_data<-all_data[, which(cols_to_extract)] ## Extract columns from data

## Rename the activities in the data set with descriptive activity names
activity_labels<-read.table("./data/activity_labels.txt") ## Read activity names
mean_and_std_data$activity<-activity_labels[, 2][mean_and_std_data$activity] ## Replace activity IDs with names

## Replace data set labels with descriptive variable names
col_names<-as.character(variable_names[which(find_mean_and_std), 2]) ## Extract variable names for mean and Std data
col_names<-c("activity", "subject", col_names) ## Make sure "activity" and "subject" columns are included
col_names<-tolower(gsub("()","",col_names, fixed=TRUE)) ## Clean up variable names
col_names<-tolower(gsub("-", "", col_names, fixed=TRUE)) ## Clean up variable names
names(mean_and_std_data)<-col_names ## Use descriptive names for column names
        
## Create a new data set with the average of each variable for each activity and each subject
activity_subject<-mean_and_std_data %>%
        group_by(activity, subject) %>%
        summarize_all(mean)

## Put the new data set in a file
write.table(activity_subject, file="projectdata.txt", row.names=FALSE)
