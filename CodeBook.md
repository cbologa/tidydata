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

1. meanvalueoflinearbodyaccelerationonaxisx
   * Raw data variable: tBodyAcc-mean()-X
   * Description: the mean value of the linear body motion component of acceleration in direction of axis X

2. meanvalueoflinearbodyaccelerationonaxisy
   * Raw data variable: tBodyAcc-mean()-Y
   * Description: the mean value of the linear body motion component of acceleration in direction of axis Y

3. meanvalueoflinearbodyaccelerationonaxisz
   * Raw data variable: tBodyAcc-mean()-Z
   * Description: the mean value of the linear body motion component of acceleration in direction of axis Z

4. meanvalueofgravityonaxisx
   * Raw data variable: tGravityAcc-mean()-X
   * Description: the mean value of the gravity component of acceleration in direction of axis X

5. meanvalueofgravityonaxisy
   * Raw data variable: tGravityAcc-mean()-Y
   * Description: the mean value of the gravity component of acceleration in direction of axis Y

6. meanvalueofgravityonaxisz
   * Raw data variable: tGravityAcc-mean()-Z
   * Description: the mean value of the gravity component of acceleration in direction of axis Z

7. meanvalueoflinearjerksignalonaxisx
   * Raw data variable: tBodyAccJerk-mean()-X
   * Description: the mean value of the time derivative (da/dt=jerk) of the linear body motion component of acceleration in direction of axis X

8. meanvalueoflinearjerksignalonaxisx
   * Raw data variable: tBodyAccJerk-mean()-Y
   * Description: the mean value of the time derivative (da/dt=jerk) of the linear body motion component of acceleration in direction of axis Y

9. meanvalueoflinearjerksignalonaxisx
   * Raw data variable: tBodyAccJerk-mean()-Z
   * Description: the mean value of the time derivative (da/dt=jerk) of the linear body motion component of acceleration in direction of axis Z

10. meanvalueofangularbodyaccelerationonaxisx
   * Raw data variable: tBodyGyro-mean()-X
   * Description: the mean value of the angular  body motion component of acceleration in direction of axis X

11. meanvalueofangularbodyaccelerationonaxisy
   * Raw data variable: tBodyGyro-mean()-Y
   * Description: the mean value of the angular  body motion component of acceleration in direction of axis Y

12. meanvalueofangularbodyaccelerationonaxisz
   * Raw data variable: tBodyGyro-mean()-Z
   * Description: the mean value of the angular  body motion component of acceleration in direction of axis Z

13. meanvalueofangularjerksignalonaxisx
   * Raw data variable: tBodyGyroJerk-mean()-X
   * Description: the mean value of the time derivative (dw/dt) of the angular body motion component of acceleration in direction of axis X

14. meanvalueofangularjerksignalonaxisy
   * Raw data variable: tBodyGyroJerk-mean()-Y
   * Description: the mean value of the time derivative (dw/dt) of the angular body motion component of acceleration in direction of axis Y

15. meanvalueofangularjerksignalonaxisz
   * Raw data variable: tBodyGyroJerk-mean()-Z
   * Description: the mean value of the time derivative (dw/dt) of the angular body motion component of acceleration in direction of axis Z

16. meanvalueoflinearbodyaccelerationmagnitude
   * Raw data variable: tBodyAccMag-mean()
   * Description: the mean value of the euclidean magnitude of the linear body motion component of acceleration

17. meanvalueofgravitymagnitude
   * Raw data variable: tGravityAccMag-mean()
   * Description: the mean value of the euclidean magnitude of the gravity component of acceleration

18. meanvalueoflinearjerksignalmagnitude
   * Raw data variable: tBodyAccJerkMag-mean()
   * Description: the mean value of the euclidean magnitude of the time derivative (da/dt=jerk) of the linear body motion component of acceleration

19. meanvalueofangularbodyaccelerationmagnitude
   * Raw data variable: tBodyGyroMag-mean()
   * Description: the mean value of the euclidean magnitude of the angular  body motion component of acceleration

20. meanvalueofangularjerksignalmagnitude
   * Raw data variable: tBodyGyroJerkMag-mean()
   * Description: the mean value of the euclidean magnitude of the time derivative (dw/dt) of the angular body motion component of acceleration

21. meanvalueoffrequencyoflinearbodyaccelerationonaxisx
   * Raw data variable: fBodyAcc-mean()-X
   * Description: the mean value of the frequency of linear body motion component of acceleration in direction of axis X. The signal was mapped from the time domain to frequncy domain  through a Fast Fourier Transform (FFT)

22. meanvalueoffrequencyoflinearbodyaccelerationonaxisy
   * Raw data variable: fBodyAcc-mean()-Y
   * Description: the mean value of the frequency of linear body motion component of acceleration in direction of axis Y. The signal was mapped from the time domain to frequncy domain  through a Fast Fourier Transform (FFT)

23. meanvalueoffrequencyoflinearbodyaccelerationonaxisz
   * Raw data variable: fBodyAcc-mean()-Z
   * Description: the mean value of the frequency of linear body motion component of acceleration in direction of axis Z. The signal was mapped from the time domain to frequncy domain  through a Fast Fourier Transform (FFT)

24. meanvalueoffrequencyoflinearjerksignalonaxisx
   * Raw data variable: fBodyAccJerk-mean()-X
   * Description: the mean value of the frequency of the time derivative (da/dt=jerk) of linear body motion component of acceleration in direction of axis X. The signal was mapped from the time domain to frequncy domain  through a Fast Fourier Transform (FFT)

25. meanvalueoffrequencyoflinearjerksignalonaxisy
   * Raw data variable: fBodyAccJerk-mean()-Y
   * Description: the mean value of the frequency of the time derivative (da/dt=jerk) of linear body motion component of acceleration in direction of axis Y. The signal was mapped from the time domain to frequncy domain  through a Fast Fourier Transform (FFT)

26. meanvalueoffrequencyoflinearjerksignalonaxisz
   * Raw data variable: fBodyAccJerk-mean()-Z
   * Description: the mean value of the frequency of the time derivative (da/dt=jerk) of linear body motion component of acceleration in direction of axis Z. The signal was mapped from the time domain to frequncy domain  through a Fast Fourier Transform (FFT)

27. meanvalueoffrequencyofangularbodyaccelerationonaxisx
   * Raw data variable: fBodyGyro-mean()-X
   * Description: the mean value of the frequency of angular body motion component of acceleration in direction of axis X. The signal was mapped from the time domain to frequncy domain  through a Fast Fourier Transform (FFT)

28. meanvalueoffrequencyofangularbodyaccelerationonaxisy
   * Raw data variable: fBodyGyro-mean()-Y
   * Description: the mean value of the frequency of angular body motion component of acceleration in direction of axis Y. The signal was mapped from the time domain to frequncy domain  through a Fast Fourier Transform (FFT)

29. meanvalueoffrequencyofangularbodyaccelerationonaxisz
   * Raw data variable: fBodyGyro-mean()-Z
   * Description: the mean value of the frequency of angular body motion component of acceleration in direction of axis Z. The signal was mapped from the time domain to frequncy domain  through a Fast Fourier Transform (FFT)

30. meanvalueoffrequencyoflinearbodyaccelerationmagnitude
   * Raw data variable: fBodyAccMag-mean()
   * Description: the mean value of the frequency of the euclidean magnitude of the linear body motion component of acceleration. The signal was mapped from the time domain to frequncy domain  through a Fast Fourier Transform (FFT)

31. meanvalueoffrequencyoflinearjerksignalmagnitude
   * Raw data variable: fBodyBodyAccJerkMag-mean()
   * Description: the mean value of the frequency of the euclidean magnitude of the time derivative (da/dt=jerk) of linear body motion component of acceleration. The signal was mapped from the time domain to frequncy domain  through a Fast Fourier Transform (FFT)

32. meanvalueoffrequencyofangularbodyaccelerationmagnitude
   * Raw data variable: fBodyBodyGyroMag-mean()
   * Description: the mean value of the frequency  of the euclidean magnitude of the angular body motion component of acceleration in direction of axis X. The signal was mapped from the time domain to frequncy domain  through a Fast Fourier Transform (FFT)

33. meanvalueoffrequencyofangularjerksignalmagnitude
   * Raw data variable: fBodyBodyGyroJerkMag-mean()
   * Description: the mean value of the frequency of the euclidean magnitude of the time derivative (dw/dt) of angular body motion component of acceleration. The signal was mapped from the time domain to frequncy domain  through a Fast Fourier Transform (FFT)

34. standarddeviationoflinearbodyaccelerationonaxisx
   * Raw data variable: tBodyAcc-std()-X
   * Description: the standard deviation of the linear body motion component of acceleration in direction of axis X

35. standarddeviationoflinearbodyaccelerationonaxisy
   * Raw data variable: tBodyAcc-std()-Y
   * Description: the standard deviation of the linear body motion component of acceleration in direction of axis Y

36. standarddeviationoflinearbodyaccelerationonaxisz
   * Raw data variable: tBodyAcc-std()-Z
   * Description: the standard deviation of the linear body motion component of acceleration in direction of axis Z

37. standarddeviationofgravityonaxisx
   * Raw data variable: tGravityAcc-std()-X
   * Description: the standard deviation of the gravity component of acceleration in direction of axis X

38. standarddeviationofgravityonaxisy
   * Raw data variable: tGravityAcc-std()-Y
   * Description: the standard deviation of the gravity component of acceleration in direction of axis Y

39. standarddeviationofgravityonaxisz
   * Raw data variable: tGravityAcc-std()-Z
   * Description: the standard deviation of the gravity component of acceleration in direction of axis Z

40. standarddeviationoflinearjerksignalonaxisx
   * Raw data variable: tBodyAccJerk-std()-X
   * Description: the standard deviation of the time derivative (da/dt=jerk) of the linear body motion component of acceleration in direction of axis X

41. standarddeviationoflinearjerksignalonaxisx
   * Raw data variable: tBodyAccJerk-std()-Y
   * Description: the standard deviation of the time derivative (da/dt=jerk) of the linear body motion component of acceleration in direction of axis Y

42. standarddeviationoflinearjerksignalonaxisx
   * Raw data variable: tBodyAccJerk-std()-Z
   * Description: the standard deviation of the time derivative (da/dt=jerk) of the linear body motion component of acceleration in direction of axis Z

43. standarddeviationofangularbodyaccelerationonaxisx
   * Raw data variable: tBodyGyro-std()-X
   * Description: the standard deviation of the angular  body motion component of acceleration in direction of axis X

44. standarddeviationofangularbodyaccelerationonaxisy
   * Raw data variable: tBodyGyro-std()-Y
   * Description: the standard deviation of the angular  body motion component of acceleration in direction of axis Y

45. standarddeviationofangularbodyaccelerationonaxisz
   * Raw data variable: tBodyGyro-std()-Z
   * Description: the standard deviation of the angular  body motion component of acceleration in direction of axis Z

46. standarddeviationofangularjerksignalonaxisx
   * Raw data variable: tBodyGyroJerk-std()-X
   * Description: the standard deviation of the time derivative (dw/dt) of the angular body motion component of acceleration in direction of axis X

47. standarddeviationofangularjerksignalonaxisy
   * Raw data variable: tBodyGyroJerk-std()-Y
   * Description: the standard deviation of the time derivative (dw/dt) of the angular body motion component of acceleration in direction of axis Y

48. standarddeviationofangularjerksignalonaxisz
   * Raw data variable: tBodyGyroJerk-std()-Z
   * Description: the standard deviation of the time derivative (dw/dt) of the angular body motion component of acceleration in direction of axis Z

49. standarddeviationoflinearbodyaccelerationmagnitude
   * Raw data variable: tBodyAccMag-std()
   * Description: the standard deviation of the euclidean magnitude of the linear body motion component of acceleration

50. standarddeviationofgravitymagnitude
   * Raw data variable: tGravityAccMag-std()
   * Description: the standard deviation of the euclidean magnitude of the gravity component of acceleration

51. standarddeviationoflinearjerksignalmagnitude
   * Raw data variable: tBodyAccJerkMag-std()
   * Description: the standard deviation of the euclidean magnitude of the time derivative (da/dt=jerk) of the linear body motion component of acceleration

52. standarddeviationofangularbodyaccelerationmagnitude
   * Raw data variable: tBodyGyroMag-std()
   * Description: the standard deviation of the euclidean magnitude of the angular  body motion component of acceleration

53. standarddeviationofangularjerksignalmagnitude
   * Raw data variable: tBodyGyroJerkMag-std()
   * Description: the standard deviation of the euclidean magnitude of the time derivative (dw/dt) of the angular body motion component of acceleration

54. standarddeviationoffrequencyoflinearbodyaccelerationonaxisx
   * Raw data variable: fBodyAcc-std()-X
   * Description: the standard deviation of the frequency of linear body motion component of acceleration in direction of axis X. The signal was mapped from the time domain to frequncy domain  through a Fast Fourier Transform (FFT)

55. standarddeviationoffrequencyoflinearbodyaccelerationonaxisy
   * Raw data variable: fBodyAcc-std()-Y
   * Description: the standard deviation of the frequency of linear body motion component of acceleration in direction of axis Y. The signal was mapped from the time domain to frequncy domain  through a Fast Fourier Transform (FFT)

56. standarddeviationoffrequencyoflinearbodyaccelerationonaxisz
   * Raw data variable: fBodyAcc-std()-Z
   * Description: the standard deviation of the frequency of linear body motion component of acceleration in direction of axis Z. The signal was mapped from the time domain to frequncy domain  through a Fast Fourier Transform (FFT)

57. standarddeviationoffrequencyoflinearjerksignalonaxisx
   * Raw data variable: fBodyAccJerk-std()-X
   * Description: the standard deviation of the frequency of the time derivative (da/dt=jerk) of linear body motion component of acceleration in direction of axis X. The signal was mapped from the time domain to frequncy domain  through a Fast Fourier Transform (FFT)

58. standarddeviationoffrequencyoflinearjerksignalonaxisy
   * Raw data variable: fBodyAccJerk-std()-Y
   * Description: the standard deviation of the frequency of the time derivative (da/dt=jerk) of linear body motion component of acceleration in direction of axis Y. The signal was mapped from the time domain to frequncy domain  through a Fast Fourier Transform (FFT)

59. standarddeviationoffrequencyoflinearjerksignalonaxisz
   * Raw data variable: fBodyAccJerk-std()-Z
   * Description: the standard deviation of the frequency of the time derivative (da/dt=jerk) of linear body motion component of acceleration in direction of axis Z. The signal was mapped from the time domain to frequncy domain  through a Fast Fourier Transform (FFT)

60. standarddeviationoffrequencyofangularbodyaccelerationonaxisx
   * Raw data variable: fBodyGyro-std()-X
   * Description: the standard deviation of the frequency of angular body motion component of acceleration in direction of axis X. The signal was mapped from the time domain to frequncy domain  through a Fast Fourier Transform (FFT)

61. standarddeviationoffrequencyofangularbodyaccelerationonaxisy
   * Raw data variable: fBodyGyro-std()-Y
   * Description: the standard deviation of the frequency of angular body motion component of acceleration in direction of axis Y. The signal was mapped from the time domain to frequncy domain  through a Fast Fourier Transform (FFT)

62. standarddeviationoffrequencyofangularbodyaccelerationonaxisz
   * Raw data variable: fBodyGyro-std()-Z
   * Description: the standard deviation of the frequency of angular body motion component of acceleration in direction of axis Z. The signal was mapped from the time domain to frequncy domain  through a Fast Fourier Transform (FFT)

63. standarddeviationoffrequencyoflinearbodyaccelerationmagnitude
   * Raw data variable: fBodyAccMag-std()
   * Description: the standard deviation of the frequency of the euclidean magnitude of the linear body motion component of acceleration. The signal was mapped from the time domain to frequncy domain  through a Fast Fourier Transform (FFT)

64. standarddeviationoffrequencyoflinearjerksignalmagnitude
   * Raw data variable: fBodyBodyAccJerkMag-std()
   * Description: the standard deviation of the frequency of the euclidean magnitude of the time derivative (da/dt=jerk) of linear body motion component of acceleration. The signal was mapped from the time domain to frequncy domain  through a Fast Fourier Transform (FFT)

65. standarddeviationoffrequencyofangularbodyaccelerationmagnitude
   * Raw data variable: fBodyBodyGyroMag-std()
   * Description: the standard deviation of the frequency  of the euclidean magnitude of the angular body motion component of acceleration in direction of axis X. The signal was mapped from the time domain to frequncy domain  through a Fast Fourier Transform (FFT)

66. standarddeviationoffrequencyofangularjerksignalmagnitude
   * Raw data variable: fBodyBodyGyroJerkMag-std()
   * Description: the standard deviation of the frequency of the euclidean magnitude of the time derivative (dw/dt) of angular body motion component of acceleration. The signal was mapped from the time domain to frequncy domain  through a Fast Fourier Transform (FFT)

   For more information regarding the measurements made and raw data 
   collection please see the publication describing this experiment and the 
   data collection procedure at 

   https://www.elen.ucl.ac.be/Proceedings/esann/esannpdf/es2013-84.pdf
   
