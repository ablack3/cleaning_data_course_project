# Codebook for the UCI_HAR_tidy.txt dataset

## Brief high level description of the data
This data is a subset of the Human Activity Recognition Using Smartphones Data Set from the UCI Machine Learning Repository. The original data can be downloaded from http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones .

Abstract: Human Activity Recognition database built from the recordings of 30 subjects performing activities of daily living (ADL) while carrying a waist-mounted smartphone with embedded inertial sensors.

I don’t have the expertise to adequately explain these variables but I will do my best. The subject_ID is the id of the subject performing the activity. The measurements are taken from the cell phone’s gyroscope and accelerometer. The prefix t denotes time domain measurements while the prefix f denoted frequency domain measurements. The suffixs X, Y,Z refer to measurements on the X, Y and Z axes. I believe that the term body refers to measurements that have had gravitational force removed. All of the measurements have been normalized to the interval [0,1].

## Description of data from the original data file
The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 

These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

Only the means and standard deviations of the measurements are retained in this dataset.

## Identifying Variables
"subject_ID" - ID for the subject performing the activity

"activity" - Activity of daily living that was performed
- "LAYING" 
- "SITTING" 
- "STANDING"     
- "WALKING"        
- "WALKING_DOWNSTAIRS"
- "WALKING_UPSTAIRS"  

## Measurements
"tBodyAcc.mean...X"

"tBodyAcc.mean...Y"

"tBodyAcc.mean...Z"

"tBodyAcc.std...X"

"tBodyAcc.std...Y"

"tBodyAcc.std...Z"

"tGravityAcc.mean...X"

"tGravityAcc.mean...Y"

"tGravityAcc.mean...Z"

"tGravityAcc.std...X"

"tGravityAcc.std...Y"

"tGravityAcc.std...Z"

"tBodyAccJerk.mean...X"

"tBodyAccJerk.mean...Y"

"tBodyAccJerk.mean...Z"

"tBodyAccJerk.std...X"

"tBodyAccJerk.std...Y"

"tBodyAccJerk.std...Z"

"tBodyGyro.mean...X"

"tBodyGyro.mean...Y"

"tBodyGyro.mean...Z"

"tBodyGyro.std...X"

"tBodyGyro.std...Y"

"tBodyGyro.std...Z"

"tBodyGyroJerk.mean...X"

"tBodyGyroJerk.mean...Y"

"tBodyGyroJerk.mean...Z"

"tBodyGyroJerk.std...X"

"tBodyGyroJerk.std...Y"

"tBodyGyroJerk.std...Z"

"tBodyAccMag.mean.."

"tBodyAccMag.std.."

"tGravityAccMag.mean.."

"tGravityAccMag.std.."

"tBodyAccJerkMag.mean.."

"tBodyAccJerkMag.std.."

"tBodyGyroMag.mean.."

"tBodyGyroMag.std.."

"tBodyGyroJerkMag.mean.."

"tBodyGyroJerkMag.std.."

"fBodyAcc.mean...X"

"fBodyAcc.mean...Y"

"fBodyAcc.mean...Z"

"fBodyAcc.std...X"

"fBodyAcc.std...Y"

"fBodyAcc.std...Z"

"fBodyAcc.meanFreq...X"

"fBodyAcc.meanFreq...Y"

"fBodyAcc.meanFreq...Z"

"fBodyAccJerk.mean...X"

"fBodyAccJerk.mean...Y"

"fBodyAccJerk.mean...Z"

"fBodyAccJerk.std...X"

"fBodyAccJerk.std...Y"

"fBodyAccJerk.std...Z"

"fBodyAccJerk.meanFreq...X"

"fBodyAccJerk.meanFreq...Y"

"fBodyAccJerk.meanFreq...Z"

"fBodyGyro.mean...X"

"fBodyGyro.mean...Y"

"fBodyGyro.mean...Z"

"fBodyGyro.std...X"

"fBodyGyro.std...Y"

"fBodyGyro.std...Z"

"fBodyGyro.meanFreq...X"

"fBodyGyro.meanFreq...Y"

"fBodyGyro.meanFreq...Z"

"fBodyAccMag.mean.."

"fBodyAccMag.std.."

"fBodyAccMag.meanFreq.."

"fBodyBodyAccJerkMag.mean.."

"fBodyBodyAccJerkMag.std.."

"fBodyBodyAccJerkMag.meanFreq.."

"fBodyBodyGyroMag.mean.."

"fBodyBodyGyroMag.std.."

"fBodyBodyGyroMag.meanFreq.."

"fBodyBodyGyroJerkMag.mean.."

"fBodyBodyGyroJerkMag.std.."

"fBodyBodyGyroJerkMag.meanFreq.."
