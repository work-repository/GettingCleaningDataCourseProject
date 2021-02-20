# Coursera: Getting and Cleaning Data Course Project

## Data:
 - **dat**: Merged data set containing both training and test sets, with their original variable names.
 - **red**: Reduced data set, containing only identifiers, mean and standard deviation variables for each measurement.
 - **clc**: Tidy data set containing the average of each variable per activity and subject.

## Variables:
The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals were prefixed with 't'. The acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ). 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 

'XYZ' is used to denote 3-axial signals in the X, Y and Z directions. The following was estimated from these signals:
 - 'Mean': Mean value
 - 'Std': Standard deviation

### Identifiers:
 - Subject: subject identifier
 - ActivityName: activity name
 
### Measurements:
 - tBodyAccMeanX
 - tBodyAccMeanY
 - tBodyAccMeanZ
 - tGravityAccMeanX
 - tGravityAccMeanY
 - tGravityAccMeanZ
 - tBodyAccJerkMeanX
 - tBodyAccJerkMeanY
 - tBodyAccJerkMeanZ
 - tBodyGyroMeanX
 - tBodyGyroMeanY
 - tBodyGyroMeanZ
 - tBodyGyroJerkMeanX
 - tBodyGyroJerkMeanY
 - tBodyGyroJerkMeanZ
 - tBodyAccMagMean
 - tGravityAccMagMean
 - tBodyAccJerkMagMean
 - tBodyGyroMagMean
 - tBodyGyroJerkMagMean
 - fBodyAccMeanX
 - fBodyAccMeanY
 - fBodyAccMeanZ
 - fBodyAccJerkMeanX
 - fBodyAccJerkMeanY
 - fBodyAccJerkMeanZ
 - fBodyGyroMeanX
 - fBodyGyroMeanY
 - fBodyGyroMeanZ
 - fBodyAccMagMean
 - fBodyBodyAccJerkMagMean
 - fBodyBodyGyroMagMean
 - fBodyBodyGyroJerkMagMean
 - tBodyAccStdX
 - tBodyAccStdY
 - tBodyAccStdZ
 - tGravityAccStdX
 - tGravityAccStdY
 - tGravityAccStdZ
 - tBodyAccJerkStdX
 - tBodyAccJerkStdY
 - tBodyAccJerkStdZ
 - tBodyGyroStdX
 - tBodyGyroStdY
 - tBodyGyroStdZ
 - tBodyGyroJerkStdX
 - tBodyGyroJerkStdY
 - tBodyGyroJerkStdZ
 - tBodyAccMagStd
 - tGravityAccMagStd
 - tBodyAccJerkMagStd
 - tBodyGyroMagStd
 - tBodyGyroJerkMagStd
 - fBodyAccStdX
 - fBodyAccStdY
 - fBodyAccStdZ
 - fBodyAccJerkStdX
 - fBodyAccJerkStdY
 - fBodyAccJerkStdZ
 - fBodyGyroStdX
 - fBodyGyroStdY
 - fBodyGyroStdZ
 - fBodyAccMagStd
 - fBodyBodyAccJerkMagStd
 - fBodyBodyGyroMagStd
 - fBodyBodyGyroJerkMagStd
 
## Transformations:
1. Merged the training and the test sets to create one data set.
1. Extracted only mean and standard deviation for each measurement. 
1. Performed a merge and replace to use descriptive activity names instead of codes.
1. Renamed measurement variables to use descriptive names. 
1. Created a tidy data set with the average of each variable for each activity and each subject and save it to a file.