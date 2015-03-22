# run_analysis.R

This R script creates a tidy data set from data collected using the Samsung 
Galaxy S smartphone accelerometers as described at

http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones
 
Data was retrieved (once) and unpacked locally as described in the commented 
lines in the source code of the script. As it is, the script needs to be be 
run in the directory created after unpacking the files. If those 4 lines are 
uncommented, the script will also download and unpack the data files and can 
be run in any directory on your computer.
 
## Requirements

In order to run, the script requires that in addition to R-base, the plyr, 
tidyr, and dplyr packages to be installed. These packages can be installed
using the command

install.packages("plyr", "tidyr", "dplyr")

## Functionality

The script performs the following operations:

1. Merges the training and the test sets to create one data set.

   For both "train" and "test" data sets, the subject, y, and X data files 
   are merged together and then the combined train and test sets are 
   concatenated. No column labels are added yet at this step.

2. Extracts only the measurements of the mean and standard deviation for 
   each measurement. 

   Column labels for each measurement are retrieved from the 
   activity_labels.txt file, and added as headers to the columns in the data 
   frame contained the combined data set.

   Although this is interpretable, I decided to include only the measurements 
   that have both mean() and std(), and exclude meanFreq() and angles between 
   means. The resulted set contains the subject and activity columns, plus 
   33 mean and 33 standard deviation columns.

3. Uses descriptive activity names to name the activities in the data set
 
   As the "activity" column in the data set contains numeric values 
   coresponding to different activity names, as described in the 
   activity_labels.txt file, those numeric values were all replaced with their 
   descriptive activity names.

4. Appropriately labels the data set with descriptive variable names. 

   This is again very interpretable, and although I do not agree with those 
   rules, I have tried to follow the ones presented in the week 4 lecture - 
   "Editing text variables". Those rules require variable names with lower 
   case only, and with no underscores, dots, or white spaces, which make them 
   less readable, in my opinion.
  
5. From the data set in step 4, creates a second, independent tidy data set 
   with the average of each variable for each activity and each subject.

   A final tidy data set was created containing 4 columns, namely subject, 
   activity, measurement(variable), and the computed mean values for all 
   triples (30 subjects X 6 activities X 66 measurements = 11,880 rows), 
   which was saved as tidy.txt file. Additional description of this data set 
   is available in the associated CodeBook.md file.

  