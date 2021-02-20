# Coursera: Getting and Cleaning Data Course Project

Data used for this project can be found [here](https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip). Description is available [here](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones).


Files:

 - `run_analysis.R` that does the following:
    1. Merges the training and the test sets to create one data set.
    1. Extracts only mean and standard deviation for each measurement. 
    1. Uses descriptive activity names to name the activities in the data set
    1. Appropriately labels the data set with descriptive variable names. 
    1. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject, written into `tidy_data_set.txt`.
 - `CodeBook.md`: a code book that describes the variables, the data, and transformations performed to clean up the data.