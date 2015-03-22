# R script for creating a tidy data set from data collected using 
# the Samsung Galaxy S smartphone accelerometers as described at
#
# http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones
# 
# Data was retrieved (once) and unpacked locally using the following commands
 
#   url <- "http://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
#   download.file(url, destfile="data.zip", method="curl")
#   unzip("data.zip")
#   setwd("UCI HAR Dataset")

# The script performs the following operations:

# 1. Merges the training and the test sets to create one data set.
  library(plyr)
  library(tidyr)
  library(dplyr)

  subject.train <- read.table("train/subject_train.txt")
  y.train <- read.table("train/y_train.txt")
  x.train <- read.table("train/X_train.txt")
  train <- cbind(subject.train, y.train, x.train)

  subject.test <- read.table("test/subject_test.txt")
  y.test <- read.table("test/y_test.txt")
  x.test <- read.table("test/X_test.txt")
  test <- cbind(subject.test, y.test, x.test)

  all <- rbind(train, test)

# 2. Extracts only the measurements on the mean and standard deviation for each measurement. 
#    Although it is interpretable, I decided to include only the measurements that have both
#    mean() and std(), and exclude meanFreq() and angles between means

  features <- read.table("features.txt")
  colnames(all) <- c("subject", "activity", as.character(features[[2]]))
  all <- all[ , grep("subject|activity|mean\\(\\)|std\\(\\)", names(all))]

# 3. Uses descriptive activity names to name the activities in the data set
  
  activity.labels <- read.table("activity_labels.txt")
  activity.list <- as.list(activity.labels[['V2']])
  names(activity.list) <-as.character(activity.labels[['V1']])
  all$activity <- sapply(all$activity, function(x) activity.list[[x]])

# 4. Appropriately labels the data set with descriptive variable names. 
#    This is again very interpretable, and although I do not agree with those rules, I have 
#    tried to follow the ones presented in the week 4 lecture - "Editing text variables"
#    (lower case only, with no underscores, dots, or white spaces)
  
  all <- plyr::rename(all, c("tBodyAcc-mean()-X"="meanvalueoflinearbodyaccelerationonaxisx",
                "tBodyAcc-mean()-Y"="meanvalueoflinearbodyaccelerationonaxisy",
                "tBodyAcc-mean()-Z"="meanvalueoflinearbodyaccelerationonaxisz",
                "tGravityAcc-mean()-X"="meanvalueofgravityonaxisx",
                "tGravityAcc-mean()-Y"="meanvalueofgravityonaxisy",
                "tGravityAcc-mean()-Z"="meanvalueofgravityonaxisz",
                "tBodyAccJerk-mean()-X"="meanvalueoflinearjerksignalonaxisx",
                "tBodyAccJerk-mean()-Y"="meanvalueoflinearjerksignalonaxisx",
                "tBodyAccJerk-mean()-Z"="meanvalueoflinearjerksignalonaxisx",
                "tBodyGyro-mean()-X"="meanvalueofangularbodyaccelerationonaxisx",
                "tBodyGyro-mean()-Y"="meanvalueofangularbodyaccelerationonaxisy",
                "tBodyGyro-mean()-Z"="meanvalueofangularbodyaccelerationonaxisz",
                "tBodyGyroJerk-mean()-X"="meanvalueofangularjerksignalonaxisx",
                "tBodyGyroJerk-mean()-Y"="meanvalueofangularjerksignalonaxisy",
                "tBodyGyroJerk-mean()-Z"="meanvalueofangularjerksignalonaxisz",
                "tBodyAccMag-mean()"="meanvalueoflinearbodyaccelerationmagnitude",
                "tGravityAccMag-mean()"="meanvalueofgravitymagnitude",
                "tBodyAccJerkMag-mean()"="meanvalueoflinearjerksignalmagnitude",
                "tBodyGyroMag-mean()"="meanvalueofangularbodyaccelerationmagnitude",
                "tBodyGyroJerkMag-mean()"="meanvalueofangularjerksignalmagnitude",
                "fBodyAcc-mean()-X"="meanvalueoffrequencyoflinearbodyaccelerationonaxisx",
                "fBodyAcc-mean()-Y"="meanvalueoffrequencyoflinearbodyaccelerationonaxisy",
                "fBodyAcc-mean()-Z"="meanvalueoffrequencyoflinearbodyaccelerationonaxisz",
                "fBodyAccJerk-mean()-X"="meanvalueoffrequencyoflinearjerksignalonaxisx",
                "fBodyAccJerk-mean()-Y"="meanvalueoffrequencyoflinearjerksignalonaxisy",
                "fBodyAccJerk-mean()-Z"="meanvalueoffrequencyoflinearjerksignalonaxisz",
                "fBodyGyro-mean()-X"="meanvalueoffrequencyofangularbodyaccelerationonaxisx",
                "fBodyGyro-mean()-Y"="meanvalueoffrequencyofangularbodyaccelerationonaxisy",
                "fBodyGyro-mean()-Z"="meanvalueoffrequencyofangularbodyaccelerationonaxisz",
                "fBodyAccMag-mean()"="meanvalueoffrequencyoflinearbodyaccelerationmagnitude",
                "fBodyBodyAccJerkMag-mean()"="meanvalueoffrequencyoflinearjerksignalmagnitude",
                "fBodyBodyGyroMag-mean()"="meanvalueoffrequencyofangularbodyaccelerationmagnitude",
                "fBodyBodyGyroJerkMag-mean()"="meanvalueoffrequencyofangularjerksignalmagnitude",
                "tBodyAcc-std()-X"="standarddeviationoflinearbodyaccelerationonaxisx",
                "tBodyAcc-std()-Y"="standarddeviationoflinearbodyaccelerationonaxisy",
                "tBodyAcc-std()-Z"="standarddeviationoflinearbodyaccelerationonaxisz",
                "tGravityAcc-std()-X"="standarddeviationofgravityonaxisx",
                "tGravityAcc-std()-Y"="standarddeviationofgravityonaxisy",
                "tGravityAcc-std()-Z"="standarddeviationofgravityonaxisz",
                "tBodyAccJerk-std()-X"="standarddeviationoflinearjerksignalonaxisx",
                "tBodyAccJerk-std()-Y"="standarddeviationoflinearjerksignalonaxisx",
                "tBodyAccJerk-std()-Z"="standarddeviationoflinearjerksignalonaxisx",
                "tBodyGyro-std()-X"="standarddeviationofangularbodyaccelerationonaxisx",
                "tBodyGyro-std()-Y"="standarddeviationofangularbodyaccelerationonaxisy",
                "tBodyGyro-std()-Z"="standarddeviationofangularbodyaccelerationonaxisz",
                "tBodyGyroJerk-std()-X"="standarddeviationofangularjerksignalonaxisx",
                "tBodyGyroJerk-std()-Y"="standarddeviationofangularjerksignalonaxisy",
                "tBodyGyroJerk-std()-Z"="standarddeviationofangularjerksignalonaxisz",
                "tBodyAccMag-std()"="standarddeviationoflinearbodyaccelerationmagnitude",
                "tGravityAccMag-std()"="standarddeviationofgravitymagnitude",
                "tBodyAccJerkMag-std()"="standarddeviationoflinearjerksignalmagnitude",
                "tBodyGyroMag-std()"="standarddeviationofangularbodyaccelerationmagnitude",
                "tBodyGyroJerkMag-std()"="standarddeviationofangularjerksignalmagnitude",
                "fBodyAcc-std()-X"="standarddeviationoffrequencyoflinearbodyaccelerationonaxisx",
                "fBodyAcc-std()-Y"="standarddeviationoffrequencyoflinearbodyaccelerationonaxisy",
                "fBodyAcc-std()-Z"="standarddeviationoffrequencyoflinearbodyaccelerationonaxisz",
                "fBodyAccJerk-std()-X"="standarddeviationoffrequencyoflinearjerksignalonaxisx",
                "fBodyAccJerk-std()-Y"="standarddeviationoffrequencyoflinearjerksignalonaxisy",
                "fBodyAccJerk-std()-Z"="standarddeviationoffrequencyoflinearjerksignalonaxisz",
                "fBodyGyro-std()-X"="standarddeviationoffrequencyofangularbodyaccelerationonaxisx",
                "fBodyGyro-std()-Y"="standarddeviationoffrequencyofangularbodyaccelerationonaxisy",
                "fBodyGyro-std()-Z"="standarddeviationoffrequencyofangularbodyaccelerationonaxisz",
                "fBodyAccMag-std()"="standarddeviationoffrequencyoflinearbodyaccelerationmagnitude",
                "fBodyBodyAccJerkMag-std()"="standarddeviationoffrequencyoflinearjerksignalmagnitude",
                "fBodyBodyGyroMag-std()"="standarddeviationoffrequencyofangularbodyaccelerationmagnitude",
                "fBodyBodyGyroJerkMag-std()"="standarddeviationoffrequencyofangularjerksignalmagnitude"
                ))

# 5. From the data set in step 4, creates a second, independent tidy data set with the average
#    of each variable for each activity and each subject.
  long <- tidyr::gather(all, measurement, value, -c(subject, activity))
  tidy <- dplyr::summarize(group_by(long, subject, activity, measurement), mean=mean(value))
  
  write.table(tidy, "tidy.txt", row.names=FALSE)
  