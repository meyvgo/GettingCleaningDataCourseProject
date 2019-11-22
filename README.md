==================================================================
Coursera Getting and Cleaning Data Course Project Final Dataset
November, 2019
==================================================================

This README describes the dataset found in "projectdata.txt" and how to re-create this dataset from the original data from the Human Activity Recognition Using Smartphones Data Set found here: http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones


FILES
*****
This project includes the following files:

--"README.md"

-- "CodeBook.md": Gives information about the variables, the data, and the work performed to clean up the data

-- "run_analysis.R": A script to create the dataset from the original dataset (see below for details)

-- "projectdata.txt": The dataset that results from running the script above.


THE DATASET
***********
The dataset is a tidy dataset in which each variable is in its own column (see CodeBook) and each observation (for a single activity and subject) is in its own row. The variables are all related in the original data and therefore there is only one table to this dataset.

As per the project specifications, the dataset variables correspond to measurements on the mean and standard deviation for each measurement in the original dataset. The additional vectors from the original dataset obtained by averaging the signals in a signal window sample (the angle() variable vectors) were determined not to be "measurements" in the original dataset and therefore were not included here.


ACTIVITY AND VARIABLE NAMES
***************************
The activity names used in the dataset were taken directly from the original dataset activity label as these are descriptive and easy-to-understand.

The variable names used in the dataset were based on the features from the original dataset, as these are relatively descriptive, however the original names were modified slightly for readability (made lowercase and removed parentheses and dashes that were part of names).


READING THE DATASET IN R
************************ 
To view the dataset in R, make sure the "projectdata.txt" file is in the working directory, and use this code*:

	data <- read.table("projectdata.txt", header = TRUE) 
    	View(data)


INSTRUCTIONS TO CREATE DATASET
******************************
1) Download the data from https://www.coursera.org/learn/data-cleaning/peer/FIZtT/getting-and-cleaning-data-course-project

2) Unzip the downloaded file and rename the top-level folder "data". The data folder should contain the folders "test" and "train" and the files "activity_labels.txt" and "features.txt" (along with a README and features_info file).

3) Place the data folder in the working directory.

4) Make sure the script "run_analysis.R" is in the working directory.

5) Run the script using this code:

	source("run_analysis.R")


ANALYSIS SCRIPT NOTES
*********************
The script "run_analysis.R" does the following:

1) Loads the "dplyr" package

2) Reads the three separate training set files for the data, activities and subjects (X_train, Y_train, and Subject_train) and combines them into one dataframe using cbind, then does the same for the three similar test set files (X_test, Y_test, and Subject_test).

3) Combines the training dataframe with the test dataframe using rbind.

4) Reads the variable name file (features) and finds the variables for mean and standard deviation for each measurement using grepl in order to extract just these variables as per the requirements of the project. See the discussion above under "ACTIVITY AND VARIABLE NAMES" to explain why variables without "()" immediately following "mean" or "std" in the name were excluded from this step (that is, the angle() variable vectors).

5) Reads the descriptive activity names file (activity_labels) and replaces the corresponding numbers in the activity column of the dataframe with these names.

6) Creates descriptive variable names based on the original variable names as described above under "ACTIVITY AND VARIABLE NAMES" and added these to the dataset.

7) Groups the dataset by activity and subject and uses summarize_all to find the average of each variable.

8) Writes out dataset to a file "projectdata.txt" in the working directory using write.table.



* Thank you for the suggestion to include this in the CodeBook from: https://thoughtfulbloke.wordpress.com/2015/09/09/getting-and-cleaning-the-assignment/
