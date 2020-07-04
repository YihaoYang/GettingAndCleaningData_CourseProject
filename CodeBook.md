## Code Book
This Code book summarize the features and identifiers of 'tidydata.txt' and 'tidydatasummary.txt', which are the results of R script 'run_analysis.R'.
The original data was obtained from [UCI Machine Learning Repository](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones)

The following information is also modified from orginal code book from above link.

**Identifiers**

- 'subject': An identifier of the subject who carried out the experiment.
- 'activity': The type of activities performed when measurements were taken. It includes 6 types:
  1. WALKING
  2. WALKING_UPSTAIRS
  3. WALKING_DOWNSTAIRS
  4. SITTING
  5. STANDING
  6. LAYING
  
**Features**

The descriptions of the features quoted from the original dataset source are as follows: 

> The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

> Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

> Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 

> These signals were used to estimate variables of the feature vector for each pattern:  
> '-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

The Mean values and Standard deviations of these measurements were processed and exported to 'tidydata.txt'. The complete list of features are as follows:

      tBodyAccMeanX
      tBodyAccMeanY
      tBodyAccMeanZ
      tGravityAccMeanX
      tGravityAccMeanY
      tGravityAccMeanZ
      tBodyAccJerkMeanX
      tBodyAccJerkMeanY
      tBodyAccJerkMeanZ
      tBodyGyroMeanX
      tBodyGyroMeanY
      tBodyGyroMeanZ
      tBodyGyroJerkMeanX
      tBodyGyroJerkMeanY
      tBodyGyroJerkMeanZ
      tBodyAccMagMean
      tGravityAccMagMean
      tBodyAccJerkMagMean
      tBodyGyroMagMean
      tBodyGyroJerkMagMean
      fBodyAccMeanX
      fBodyAccMeanY
      fBodyAccMeanZ
      fBodyAccJerkMeanX
      fBodyAccJerkMeanY
      fBodyAccJerkMeanZ
      fBodyGyroMeanX
      fBodyGyroMeanY
      fBodyGyroMeanZ
      fBodyAccMagMean
      fBodyBodyAccJerkMagMean
      fBodyBodyGyroMagMean
      fBodyBodyGyroJerkMagMean
      tBodyAccStdX
      tBodyAccStdY
      tBodyAccStdZ
      tGravityAccStdX
      tGravityAccStdY
      tGravityAccStdZ
      tBodyAccJerkStdX
      tBodyAccJerkStdY
      tBodyAccJerkStdZ
      tBodyGyroStdX
      tBodyGyroStdY
      tBodyGyroStdZ
      tBodyGyroJerkStdX
      tBodyGyroJerkStdY
      tBodyGyroJerkStdZ
      tBodyAccMagStd
      tGravityAccMagStd
      tBodyAccJerkMagStd
      tBodyGyroMagStd
      tBodyGyroJerkMagStd
      fBodyAccStdX
      fBodyAccStdY
      fBodyAccStdZ
      fBodyAccJerkStdX
      fBodyAccJerkStdY
      fBodyAccJerkStdZ
      fBodyGyroStdX
      fBodyGyroStdY
      fBodyGyroStdZ
      fBodyAccMagStd
      fBodyBodyAccJerkMagStd
      fBodyBodyGyroMagStd
      fBodyBodyGyroJerkMagStd


