# Code Book for the generated tidy data set

This code book describes the variables, the data, and transformations 
performed to clean up the original data set.

## Data set
   This long format tidy data set contains 4 columns (variables) and 11,880 
   rows, for 30 human subjects x 6 activities x 66 measurements

## Variables

1. subject

   * Type: integer
   * Values: [1 : 30]
   * Description: human subject involved in experiment
   * Raw data source: files train/subject_train.txt and test/subject_test.txt
   * Transformation: none

2. activity

   * Type: factor with 6 levels
   * Values: LAYING, SITTING, STANDING, WALKING, WALKING_DOWNSTAIRS, 
      WALKING_UPSTAIRS
   * Description: specific activity performed by the human subject when the 
      measurement was made
   * Raw data source: files train/y_train.txt and test/y_test.txt
   * Transformation: replaced numeric values with descriptive activity names

3. measurement

   * Type: factor with 66 levels
   * Values: described below
   * Description: the names of "the measurements on the mean and standard 
      deviation for each measurement" (sounds a bit redundant, but that is how 
      it was formulated in the assignment)
   * Raw data source: file features.txt
   * Transformation: Extracted only the measurements on the mean and standard 
      deviation for each measurement and replaced these labels with descriptive
      variable names (subjectively chosen).

4. mean

   * Type: numeric (decimal)
   * Values: (-1.0 : 1.0)
   * Description: the average value of each variable for each activity and each 
      subject
   * Raw data source: selected columns from files train/X_train.txt and 
      test/X_test.txt
   * Transformation: Only the "mean()" and "std()" variables were selected and 
      gathered into rows. Data was grouped by each combination of subject, 
      activity, and variable (measurement), and averages were computed for 
      each of these groups.

## Values in the measurement column

   * Name: meanvalueoflinearbodyaccelerationonaxisx
   ** Raw data variable: tBodyAcc-mean()-X
   ** Description: the mean value of the linear body motion component of acceleration in direction of axis X

   * Name: meanvalueoflinearbodyaccelerationonaxisy
   * Raw data variable: tBodyAcc-mean()-Y
   * Description: the mean value of the linear body motion component of acceleration in direction of axis Y

   * Name: meanvalueoflinearbodyaccelerationonaxisz
   * Raw data variable: tBodyAcc-mean()-Z
   * Description: the mean value of the linear body motion component of acceleration in direction of axis Z

   * Name: meanvalueofgravityonaxisx
   * Raw data variable: tGravityAcc-mean()-X
   * Description: the mean value of the gravity component of acceleration in direction of axis X

   * Name: meanvalueofgravityonaxisy
   * Raw data variable: tGravityAcc-mean()-Y
   * Description: the mean value of the gravity component of acceleration in direction of axis Y

   * Name: meanvalueofgravityonaxisz
   * Raw data variable: tGravityAcc-mean()-Z
   * Description: the mean value of the gravity component of acceleration in direction of axis Z

   * Name: meanvalueoflinearjerksignalonaxisx
   * Raw data variable: tBodyAccJerk-mean()-X
   * Description: the mean value of the time derivative (da/dt=jerk) of the linear body motion component of acceleration in direction of axis X

   * Name: meanvalueoflinearjerksignalonaxisx
   * Raw data variable: tBodyAccJerk-mean()-Y
   * Description: the mean value of the time derivative (da/dt=jerk) of the linear body motion component of acceleration in direction of axis Y

   * Name: meanvalueoflinearjerksignalonaxisx
   * Raw data variable: tBodyAccJerk-mean()-Z
   * Description: the mean value of the time derivative (da/dt=jerk) of the linear body motion component of acceleration in direction of axis Z

   * Name: meanvalueofangularbodyaccelerationonaxisx
   * Raw data variable: tBodyGyro-mean()-X
   * Description: the mean value of the angular  body motion component of acceleration in direction of axis X

   * Name: meanvalueofangularbodyaccelerationonaxisy
   * Raw data variable: tBodyGyro-mean()-Y
   * Description: the mean value of the angular  body motion component of acceleration in direction of axis Y

   * Name: meanvalueofangularbodyaccelerationonaxisz
   * Raw data variable: tBodyGyro-mean()-Z
   * Description: the mean value of the angular  body motion component of acceleration in direction of axis Z

   * Name: meanvalueofangularjerksignalonaxisx
   * Raw data variable: tBodyGyroJerk-mean()-X
   * Description: the mean value of the time derivative (dw/dt) of the angular body motion component of acceleration in direction of axis X

   * Name: meanvalueofangularjerksignalonaxisy
   * Raw data variable: tBodyGyroJerk-mean()-Y
   * Description: the mean value of the time derivative (dw/dt) of the angular body motion component of acceleration in direction of axis Y

   * Name: meanvalueofangularjerksignalonaxisz
   * Raw data variable: tBodyGyroJerk-mean()-Z
   * Description: the mean value of the time derivative (dw/dt) of the angular body motion component of acceleration in direction of axis Z

   * Name: meanvalueoflinearbodyaccelerationmagnitude
   * Raw data variable: tBodyAccMag-mean()
   * Description: the mean value of the euclidean magnitude of the linear body motion component of acceleration

   * Name: meanvalueofgravitymagnitude
   * Raw data variable: tGravityAccMag-mean()
   * Description: the mean value of the euclidean magnitude of the gravity component of acceleration

   * Name: meanvalueoflinearjerksignalmagnitude
   * Raw data variable: tBodyAccJerkMag-mean()
   * Description: the mean value of the euclidean magnitude of the time derivative (da/dt=jerk) of the linear body motion component of acceleration

   * Name: meanvalueofangularbodyaccelerationmagnitude
   * Raw data variable: tBodyGyroMag-mean()
   * Description: the mean value of the euclidean magnitude of the angular  body motion component of acceleration

   * Name: meanvalueofangularjerksignalmagnitude
   * Raw data variable: tBodyGyroJerkMag-mean()
   * Description: the mean value of the euclidean magnitude of the time derivative (dw/dt) of the angular body motion component of acceleration

   * Name: meanvalueoffrequencyoflinearbodyaccelerationonaxisx
   * Raw data variable: fBodyAcc-mean()-X
   * Description: the mean value of the frequency of linear body motion component of acceleration in direction of axis X. The signal was mapped from the time domain to frequncy domain  through a  Fast Fourier Transform (FFT)

   * Name: meanvalueoffrequencyoflinearbodyaccelerationonaxisy
   * Raw data variable: fBodyAcc-mean()-Y
   * Description: the mean value of the frequency of linear body motion component of acceleration in direction of axis Y. The signal was mapped from the time domain to frequncy domain  through a  Fast Fourier Transform (FFT)

   * Name: meanvalueoffrequencyoflinearbodyaccelerationonaxisz
   * Raw data variable: fBodyAcc-mean()-Z
   * Description: the mean value of the frequency of linear body motion component of acceleration in direction of axis Z. The signal was mapped from the time domain to frequncy domain  through a  Fast Fourier Transform (FFT)

   * Name: meanvalueoffrequencyoflinearjerksignalonaxisx
   * Raw data variable: fBodyAccJerk-mean()-X
   * Description: the mean value of the frequency of the time derivative (da/dt=jerk) of linear body motion component of acceleration in direction of axis X. The signal was mapped from the time domain to frequncy domain  through a  Fast Fourier Transform (FFT)

   * Name: meanvalueoffrequencyoflinearjerksignalonaxisy
   * Raw data variable: fBodyAccJerk-mean()-Y
   * Description: the mean value of the frequency of the time derivative (da/dt=jerk) of linear body motion component of acceleration in direction of axis Y. The signal was mapped from the time domain to frequncy domain  through a  Fast Fourier Transform (FFT)

   * Name: meanvalueoffrequencyoflinearjerksignalonaxisz
   * Raw data variable: fBodyAccJerk-mean()-Z
   * Description: the mean value of the frequency of the time derivative (da/dt=jerk) of linear body motion component of acceleration in direction of axis Z. The signal was mapped from the time domain to frequncy domain  through a  Fast Fourier Transform (FFT)

   * Name: meanvalueoffrequencyofangularbodyaccelerationonaxisx
   * Raw data variable: fBodyGyro-mean()-X
   * Description: the mean value of the frequency of angular body motion component of acceleration in direction of axis X. The signal was mapped from the time domain to frequncy domain  through a  Fast Fourier Transform (FFT)

   * Name: meanvalueoffrequencyofangularbodyaccelerationonaxisy
   * Raw data variable: fBodyGyro-mean()-Y
   * Description: the mean value of the frequency of angular body motion component of acceleration in direction of axis Y. The signal was mapped from the time domain to frequncy domain  through a  Fast Fourier Transform (FFT)

   * Name: meanvalueoffrequencyofangularbodyaccelerationonaxisz
   * Raw data variable: fBodyGyro-mean()-Z
   * Description: the mean value of the frequency of angular body motion component of acceleration in direction of axis Z. The signal was mapped from the time domain to frequncy domain  through a  Fast Fourier Transform (FFT)

   * Name: meanvalueoffrequencyoflinearbodyaccelerationmagnitude
   * Raw data variable: fBodyAccMag-mean()
   * Description: the mean value of the frequency of the euclidean magnitude of the linear body motion component of acceleration. The signal was mapped from the time domain to frequncy domain  through a  Fast Fourier Transform (FFT)

   * Name: meanvalueoffrequencyoflinearjerksignalmagnitude
   * Raw data variable: fBodyBodyAccJerkMag-mean()
   * Description: the mean value of the frequency of the euclidean magnitude of the time derivative (da/dt=jerk) of linear body motion component of acceleration. The signal was mapped from the time domain to frequncy domain  through a  Fast Fourier Transform (FFT)

   * Name: meanvalueoffrequencyofangularbodyaccelerationmagnitude
   * Raw data variable: fBodyBodyGyroMag-mean()
   * Description: the mean value of the frequency  of the euclidean magnitude of the angular body motion component of acceleration in direction of axis X. The signal was mapped from the time domain to frequncy domain  through a  Fast Fourier Transform (FFT)

   * Name: meanvalueoffrequencyofangularjerksignalmagnitude
   * Raw data variable: fBodyBodyGyroJerkMag-mean()
   * Description: the mean value of the frequency of the euclidean magnitude of the time derivative (dw/dt) of angular body motion component of acceleration. The signal was mapped from the time domain to frequncy domain  through a  Fast Fourier Transform (FFT)

   * Name: standarddeviationoflinearbodyaccelerationonaxisx
   * Raw data variable: tBodyAcc-std()-X
   * Description: the standard deviation of the linear body motion component of acceleration in direction of axis X

   * Name: standarddeviationoflinearbodyaccelerationonaxisy
   * Raw data variable: tBodyAcc-std()-Y
   * Description: the standard deviation of the linear body motion component of acceleration in direction of axis Y

   * Name: standarddeviationoflinearbodyaccelerationonaxisz
   * Raw data variable: tBodyAcc-std()-Z
   * Description: the standard deviation of the linear body motion component of acceleration in direction of axis Z

   * Name: standarddeviationofgravityonaxisx
   * Raw data variable: tGravityAcc-std()-X
   * Description: the standard deviation of the gravity component of acceleration in direction of axis X

   * Name: standarddeviationofgravityonaxisy
   * Raw data variable: tGravityAcc-std()-Y
   * Description: the standard deviation of the gravity component of acceleration in direction of axis Y

   * Name: standarddeviationofgravityonaxisz
   * Raw data variable: tGravityAcc-std()-Z
   * Description: the standard deviation of the gravity component of acceleration in direction of axis Z

   * Name: standarddeviationoflinearjerksignalonaxisx
   * Raw data variable: tBodyAccJerk-std()-X
   * Description: the standard deviation of the time derivative (da/dt=jerk) of the linear body motion component of acceleration in direction of axis X

   * Name: standarddeviationoflinearjerksignalonaxisx
   * Raw data variable: tBodyAccJerk-std()-Y
   * Description: the standard deviation of the time derivative (da/dt=jerk) of the linear body motion component of acceleration in direction of axis Y

   * Name: standarddeviationoflinearjerksignalonaxisx
   * Raw data variable: tBodyAccJerk-std()-Z
   * Description: the standard deviation of the time derivative (da/dt=jerk) of the linear body motion component of acceleration in direction of axis Z

   * Name: standarddeviationofangularbodyaccelerationonaxisx
   * Raw data variable: tBodyGyro-std()-X
   * Description: the standard deviation of the angular  body motion component of acceleration in direction of axis X

   * Name: standarddeviationofangularbodyaccelerationonaxisy
   * Raw data variable: tBodyGyro-std()-Y
   * Description: the standard deviation of the angular  body motion component of acceleration in direction of axis Y

   * Name: standarddeviationofangularbodyaccelerationonaxisz
   * Raw data variable: tBodyGyro-std()-Z
   * Description: the standard deviation of the angular  body motion component of acceleration in direction of axis Z

   * Name: standarddeviationofangularjerksignalonaxisx
   * Raw data variable: tBodyGyroJerk-std()-X
   * Description: the standard deviation of the time derivative (dw/dt) of the angular body motion component of acceleration in direction of axis X

   * Name: standarddeviationofangularjerksignalonaxisy
   * Raw data variable: tBodyGyroJerk-std()-Y
   * Description: the standard deviation of the time derivative (dw/dt) of the angular body motion component of acceleration in direction of axis Y

   * Name: standarddeviationofangularjerksignalonaxisz
   * Raw data variable: tBodyGyroJerk-std()-Z
   * Description: the standard deviation of the time derivative (dw/dt) of the angular body motion component of acceleration in direction of axis Z

   * Name: standarddeviationoflinearbodyaccelerationmagnitude
   * Raw data variable: tBodyAccMag-std()
   * Description: the standard deviation of the euclidean magnitude of the linear body motion component of acceleration

   * Name: standarddeviationofgravitymagnitude
   * Raw data variable: tGravityAccMag-std()
   * Description: the standard deviation of the euclidean magnitude of the gravity component of acceleration

   * Name: standarddeviationoflinearjerksignalmagnitude
   * Raw data variable: tBodyAccJerkMag-std()
   * Description: the standard deviation of the euclidean magnitude of the time derivative (da/dt=jerk) of the linear body motion component of acceleration

   * Name: standarddeviationofangularbodyaccelerationmagnitude
   * Raw data variable: tBodyGyroMag-std()
   * Description: the standard deviation of the euclidean magnitude of the angular  body motion component of acceleration

   * Name: standarddeviationofangularjerksignalmagnitude
   * Raw data variable: tBodyGyroJerkMag-std()
   * Description: the standard deviation of the euclidean magnitude of the time derivative (dw/dt) of the angular body motion component of acceleration

   * Name: standarddeviationoffrequencyoflinearbodyaccelerationonaxisx
   * Raw data variable: fBodyAcc-std()-X
   * Description: the standard deviation of the frequency of linear body motion component of acceleration in direction of axis X. The signal was mapped from the time domain to frequncy domain  through a  Fast Fourier Transform (FFT)

   * Name: standarddeviationoffrequencyoflinearbodyaccelerationonaxisy
   * Raw data variable: fBodyAcc-std()-Y
   * Description: the standard deviation of the frequency of linear body motion component of acceleration in direction of axis Y. The signal was mapped from the time domain to frequncy domain  through a  Fast Fourier Transform (FFT)

   * Name: standarddeviationoffrequencyoflinearbodyaccelerationonaxisz
   * Raw data variable: fBodyAcc-std()-Z
   * Description: the standard deviation of the frequency of linear body motion component of acceleration in direction of axis Z. The signal was mapped from the time domain to frequncy domain  through a  Fast Fourier Transform (FFT)

   * Name: standarddeviationoffrequencyoflinearjerksignalonaxisx
   * Raw data variable: fBodyAccJerk-std()-X
   * Description: the standard deviation of the frequency of the time derivative (da/dt=jerk) of linear body motion component of acceleration in direction of axis X. The signal was mapped from the time domain to frequncy domain  through a  Fast Fourier Transform (FFT)

   * Name: standarddeviationoffrequencyoflinearjerksignalonaxisy
   * Raw data variable: fBodyAccJerk-std()-Y
   * Description: the standard deviation of the frequency of the time derivative (da/dt=jerk) of linear body motion component of acceleration in direction of axis Y. The signal was mapped from the time domain to frequncy domain  through a  Fast Fourier Transform (FFT)

   * Name: standarddeviationoffrequencyoflinearjerksignalonaxisz
   * Raw data variable: fBodyAccJerk-std()-Z
   * Description: the standard deviation of the frequency of the time derivative (da/dt=jerk) of linear body motion component of acceleration in direction of axis Z. The signal was mapped from the time domain to frequncy domain  through a  Fast Fourier Transform (FFT)

   * Name: standarddeviationoffrequencyofangularbodyaccelerationonaxisx
   * Raw data variable: fBodyGyro-std()-X
   * Description: the standard deviation of the frequency of angular body motion component of acceleration in direction of axis X. The signal was mapped from the time domain to frequncy domain  through a  Fast Fourier Transform (FFT)

   * Name: standarddeviationoffrequencyofangularbodyaccelerationonaxisy
   * Raw data variable: fBodyGyro-std()-Y
   * Description: the standard deviation of the frequency of angular body motion component of acceleration in direction of axis Y. The signal was mapped from the time domain to frequncy domain  through a  Fast Fourier Transform (FFT)

   * Name: standarddeviationoffrequencyofangularbodyaccelerationonaxisz
   * Raw data variable: fBodyGyro-std()-Z
   * Description: the standard deviation of the frequency of angular body motion component of acceleration in direction of axis Z. The signal was mapped from the time domain to frequncy domain  through a  Fast Fourier Transform (FFT)

   * Name: standarddeviationoffrequencyoflinearbodyaccelerationmagnitude
   * Raw data variable: fBodyAccMag-std()
   * Description: the standard deviation of the frequency of the euclidean magnitude of the linear body motion component of acceleration. The signal was mapped from the time domain to frequncy domain  through a  Fast Fourier Transform (FFT)

   * Name: standarddeviationoffrequencyoflinearjerksignalmagnitude
   * Raw data variable: fBodyBodyAccJerkMag-std()
   * Description: the standard deviation of the frequency of the euclidean magnitude of the time derivative (da/dt=jerk) of linear body motion component of acceleration. The signal was mapped from the time domain to frequncy domain  through a  Fast Fourier Transform (FFT)

   * Name: standarddeviationoffrequencyofangularbodyaccelerationmagnitude
   * Raw data variable: fBodyBodyGyroMag-std()
   * Description: the standard deviation of the frequency  of the euclidean magnitude of the angular body motion component of acceleration in direction of axis X. The signal was mapped from the time domain to frequncy domain  through a  Fast Fourier Transform (FFT)

   * Name: standarddeviationoffrequencyofangularjerksignalmagnitude
   * Raw data variable: fBodyBodyGyroJerkMag-std()
   * Description: the standard deviation of the frequency of the euclidean magnitude of the time derivative (dw/dt) of angular body motion component of acceleration. The signal was mapped from the time domain to frequncy domain  through a  Fast Fourier Transform (FFT)

   For more information regarding the measurements made and raw data 
   collection please see the publication describing this experiment and the 
   data collection procedure at 

   https://www.elen.ucl.ac.be/Proceedings/esann/esannpdf/es2013-84.pdf
   
