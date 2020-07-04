## Getting and Cleaning Data Course Project
This repo is for Getting and Cleaning Data Course Project. It contains the tidy datasets 'tidydata.txt' and 'tidydatasummary.txt'. The latter dataset contains the average of each variable for each activity and each subject. The R script 'run_analysis.R' download and processed the raw data sets from [UCI HAR Dataset](https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip) and generated the tidy datasets mentioned above. Specifically, it does the following:

1. Downloads the datasets.
2. Merges the training and the test sets to create one data set.
3. Extracts only the measurements on the mean and standard deviation for each measurement.
4. Uses descriptive activity names to name the activities in the data set
5. Appropriately labels the data set with descriptive variable names.
6. From the data set in step 5, creates a second, independent tidy data set with the average of each variable for each activity and each subject.
7. Exports the processed tidy datasets.

References:
[1] Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine. International Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012