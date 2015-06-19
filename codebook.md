# Coursera Getting and Cleaning Data Course Project

##CODEBOOK

Table contains 88 variables and 180 total observations of the *aggregated mean* within each subject and activity. 

### Subject and activity identifiers

- **subject**: ID of the subject in the measurement study (30 subjects total)
- **activity_label**: description of 6 activities being performed while wearing the device.
  - WALKING
  - WALKING_UPSTAIRS
  - WALKING_DOWNSTAIRS
  - SITTING
  - STANDING
  - LAYING


### Mean value of measurements
####Triaxial acceleration from the accelerometer (total acceleration) and the estimated body acceleration in the X,Y and Z vectors

- tBodyAcc.mean...X/Y/Z
- tGravityAcc.mean...X/Y/Z
- tBodyAccJerk.mean...X/Y/Z
- tBodyGyro.mean...X/Y/Z
- tBodyGyroJerk.mean...X/Y/Z
- tBodyAccMag.mean..
- tGravityAccMag.mean..
- tBodyAccJerkMag.mean..
- tBodyGyroMag.mean..
- tBodyGyroJerkMag.mean..

####Fast Fourier transform applied to signals
- fBodyAcc.mean...X/Y/Z
- fBodyAcc.meanFreq...X/Y/Z
- fBodyAccJerk.mean...X/Y/Z
- fBodyAccJerk.meanFreq...X/Y/Z
- fBodyGyro.mean...X/Y/Z
- fBodyGyro.meanFreq...X/Y/Z
- fBodyAccMag.mean..
- fBodyAccMag.meanFreq..
- fBodyBodyAccJerkMag.mean..
- fBodyBodyAccJerkMag.meanFreq..
- fBodyBodyGyroMag.mean..
- fBodyBodyGyroMag.meanFreq..
- fBodyBodyGyroJerkMag.mean..
- fBodyBodyGyroJerkMag.meanFreq..

####Triaxial Angular velocity from the gyroscope 
- angle.tBodyAccMean.gravity.
- angle.tBodyAccJerkMean..gravityMean.
- angle.tBodyGyroMean.gravityMean.
- angle.tBodyGyroJerkMean.gravityMean.
- angle.X.gravityMean.
- angle.Y.gravityMean.
- angle.Z.gravityMean.

### Standard deviation of measurements
####Triaxial acceleration from the accelerometer (total acceleration) and the estimated body acceleration in the X,Y and Z vectors
- tBodyAcc.std...X/Y/Z
- tGravityAcc.std...X/Y/Z
- tBodyAccJerk.std...X/Y/Z
- tBodyGyro.std...X/Y/Z
- tBodyGyroJerk.std...X/Y/Z
- tBodyAccMag.std..
- tGravityAccMag.std..
- tBodyAccJerkMag.std..
- tBodyGyroMag.std..
- tBodyGyroJerkMag.std..

####Fast Fourier transform applied to signals
- fBodyAcc.std...X/Y/Z
- fBodyAccJerk.std...X/Y/Z
- fBodyGyro.std...X/Y/Z
- fBodyAccMag.std..
- fBodyBodyAccJerkMag.std..
- fBodyBodyGyroMag.std..
- fBodyBodyGyroJerkMag.std..


###Original Data Source

Human Activity Recognition Using Smartphones Dataset
Version 1.0
==================================================================
Jorge L. Reyes-Ortiz, Davide Anguita, Alessandro Ghio, Luca Oneto.
Smartlab - Non Linear Complex Systems Laboratory
DITEN - Università degli Studi di Genova.
Via Opera Pia 11A, I-16145, Genoa, Italy.
activityrecognition@smartlab.ws
www.smartlab.ws
==================================================================