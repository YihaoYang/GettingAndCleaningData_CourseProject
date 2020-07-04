library(dplyr)
library(stringr)
# Download and unzip data if necessary
foldername <- "UCI HAR Dataset"
if (!file.exists(foldername)){
      download.file("https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip",
                    "temp.zip")
      unzip("temp.zip")
      file.remove("temp.zip")
}
# Step 1: Merges the training and the test sets to create one data set.
# read tables
X_train <- read.table("UCI HAR Dataset/train/X_train.txt")
y_train <- read.table("UCI HAR Dataset/train/y_train.txt")
subject_train <- read.table("UCI HAR Dataset/train/subject_train.txt")
X_test <- read.table("UCI HAR Dataset/test/X_test.txt")
y_test <- read.table("UCI HAR Dataset/test/y_test.txt")
subject_test <- read.table("UCI HAR Dataset/test/subject_test.txt")
# merge data
X <- rbind(X_train,X_test)
y <- rbind(y_train,y_test)
subject <- rbind(subject_train,subject_test)
raw_merged <- cbind(subject,y,X)

# Step 2: Extracts only the measurements on the mean and standard deviation
# for each measurement.
features <- read.table("UCI HAR Dataset/features.txt")
colnames(raw_merged) <- c("subject","activity",features$V2)
tidydata <-select(raw_merged,subject,activity,
                  contains("mean()",ignore.case = FALSE),
                  contains("std",ignore.case = FALSE))

# Step 3: Uses descriptive activity names to name the activities in the data set
activity_labels <- read.table("UCI HAR Dataset/activity_labels.txt")
tidydata <- mutate(tidydata,activity = activity_labels[activity,2])

# Step 4: Appropriately labels the data set with descriptive variable names.
names(tidydata) <- names(tidydata) %>% 
      str_replace_all("[-()]","") %>%
      str_replace_all("mean","Mean") %>%
      str_replace_all("std","Std")

# Step 5: From the data set in step 4, creates a second, independent tidy data 
# set with the average of each variable for each activity and each subject.
tidydata.summary <- tidydata %>%
      group_by(activity,subject) %>%
      summarise_all(mean)

# Export tidy datasets
write.table(tidydata,"tidydata.txt",row.names = FALSE)
write.table(tidydata.summary,"tidydatasummary.txt",row.names = FALSE)




