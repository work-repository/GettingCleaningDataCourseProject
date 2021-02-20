#Setup
library(data.table)
library(dplyr)

#Download data
url <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
data_file <- "./projdata.zip"
if (!file.exists(data_file)) {
  download.file(url, data_file)
}
rm(url)

#Load data
data_dir <- "./UCI HAR Dataset"
if (!dir.exists(data_dir)) {
  unzip(data_file)
}

act_lab_file <- paste(data_dir, "activity_labels.txt", sep = "/")
mes_lab_file <- paste(data_dir, "features.txt", sep = "/")

train_mes_file <- paste(data_dir, "train/X_train.txt", sep = "/")
train_act_file <- paste(data_dir, "train/y_train.txt", sep = "/")
train_sub_file <- paste(data_dir, "train/subject_train.txt", sep = "/")

test_mes_file <- paste(data_dir, "test/X_test.txt", sep = "/")
test_act_file <- paste(data_dir, "test/y_test.txt", sep = "/")
test_sub_file <- paste(data_dir, "test/subject_test.txt", sep = "/")

act_lab <- fread(act_lab_file, col.names = c("ActivityId", "ActivityName"))
mes_lab <- fread(mes_lab_file, col.names = c("MeasurementId", "MeasurementName"))

train_mes <- fread(train_mes_file, col.names = mes_lab$MeasurementName)
train_act <- fread(train_act_file, col.names = c("ActivityId"))
train_sub <- fread(train_sub_file, col.names = c("Subject"))

test_mes <- fread(test_mes_file, col.names = mes_lab$MeasurementName)
test_act <- fread(test_act_file, col.names = c("ActivityId"))
test_sub <- fread(test_sub_file, col.names = c("Subject"))
rm(data_dir)
rm(list = ls()[grep("file", ls())])

#1.Merge training and test data
dat <- rbind(cbind(train_sub, train_act, train_mes), cbind(test_sub, test_act, test_mes))
rm(list = ls()[grep("test", ls())])
rm(list = ls()[grep("train", ls())])

#2.Extract only mean and standard deviation measurements
red <- select(dat, "Subject", "ActivityId", contains("-mean()"), contains("-std()"))

#3.Name the activities
red <- select(merge(red, act_lab, by = "ActivityId"), Subject, ActivityName, contains("-"))
rm(list = ls()[grep("lab", ls())])

#4.Use descriptive variable names
lab <- names(red) 
lab <- gsub("-mean", "Mean", lab)
lab <- gsub("-std", "Std", lab)
lab <- gsub("[()-]", "", lab)
names(red) <- lab
rm(lab)

#5. Create new data set with average of each variable per subject and activity
clc <- group_by(red, Subject, ActivityName) %>% summarize_all(mean)

#Save data set
write.table(clc, file = "./tidy_data_set.txt", row.names = F)