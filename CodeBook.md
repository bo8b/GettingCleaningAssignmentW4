## Getting and Cleaning Data - Week 4
### Getting and Cleaning Data Course Project Code Book

See files "UCI HAR Dataset features_info.txt" and "UCI HAR Dataset README.txt" for more complete descriptions of the source data.

Fields:

- Subject	- Numeric id of the volunteer participating in the study
- Activity - One of six activities ((WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING)) completed while being monitored

#The following fields are means of all measurements for this subject/activity combination.  

The source measurements come from the accelerometer and gyroscope 3-axial raw signals TimeAccelorometer-XYZ and TimeGyroscope-XYZ. These time domain signals (prefix 'Time' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (TimeBodyAccelerometer-XYZ and TimeGravityAccelerometer-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (TimeBodyAccelerometerJerk-XYZ and TimeBodyGyroscopeJerk-XYZ).  Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (TimeBodyAccelerometerMagnitude, TimeGravityAccelerometerMagnitude, TimeBodyAccelerometerJerkMagnitude, TimeBodyGyroscopeMagnitude, TimeBodyGyroscopeJerkMagnitude). 
Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing FrequencyBodyAccelerometer-XYZ, FrequencyBodyAccelerometerJerk-XYZ, FrequencyBodyGyroscope-XYZ, FrequencyBodyAccelerometerJerkMagnitude, FrequencyBodyGyroscopeMagnitude, FrequencyBodyGyroscopeJerkMagnitude.  (Note the prefix 'Frequency' to indicate frequency domain signals). 

These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

- TimeBodyAccelerometerMean-XYZ
- TimeBodyAccelerometerSTD-XYZ
- TimeGravityAccelerometerMean-XYZ
- TimeGravityAccelerometerSTD-XYZ
- TimeBodyAccelerometerJerkMean-XYZ
- TimeBodyAccelerometerJerkSTD-XYZ
- TimeBodyGyroscopeMean-XYZ
- TimeBodyGyroscopeSTD-XYZ
- TimeBodyGyroscopeJerkMean-XYZ
- TimeBodyGyroscopeJerkSTD-XYZ
- TimeBodyAccelerometerMagnitudeMean	
- TimeBodyAccelerometerMagnitudeSTD	
- TimeGravityAccelerometerMagnitudeMean	
- TimeGravityAccelerometerMagnitudeSTD	
- TimeBodyAccelerometerJerkMagnitudeMean	
- TimeBodyAccelerometerJerkMagnitudeSTD
- TimeBodyGyroscopeMagnitudeMean	
- TimeBodyGyroscopeMagnitudeSTD
- TimeBodyGyroscopeJerkMagnitudeMean
- TimeBodyGyroscopeJerkMagnitudeSTD
- FrequencyBodyAccelerometerMean-XYZ
- FrequencyBodyAccelerometerSTD-XYZ
- FrequencyBodyAccelerometer-MeanFrequency-XYZ
- FrequencyBodyAccelerometerJerkMean-XYZ
- FrequencyBodyAccelerometerJerkSTD-XYZ
- FrequencyBodyAccelerometerJerk-MeanFrequency-XYZ
- FrequencyBodyGyroscopeMean-XYZ
- FrequencyBodyGyroscopeSTD-XYZ
- FrequencyBodyGyroscope-MeanFrequency-XYZ
- FrequencyBodyAccelerometerMagnitudeMean	
- FrequencyBodyAccelerometerMagnitudeSTD	
- FrequencyBodyAccelerometerMagnitude-MeanFrequency
- FrequencyBodyAccelerometerJerkMagnitudeMean
- FrequencyBodyAccelerometerJerkMagnitudeSTD
- FrequencyBodyAccelerometerJerkMagnitude-MeanFrequency
- FrequencyBodyGyroscopeMagnitudeMean	
- FrequencyBodyGyroscopeMagnitudeSTD	
- FrequencyBodyGyroscopeMagnitude-MeanFrequency
- FrequencyBodyGyroscopeJerkMagnitudeMean
- FrequencyBodyGyroscopeJerkMagnitudeSTD
- FrequencyBodyGyroscopeJerkMagnitude-MeanFrequency

Additional vectors obtained by averaging the signals in a signal window sample. These are used on the angle() variable:

- Angle(TimeBodyAccelerometerMean,Gravity)
- Angle(TimeBodyAccelerometerJerkMean),GravityMean)
- Angle(TimeBodyGyroscopeMean,GravityMean)
- Angle(TimeBodyGyroscopeJerkMean,GravityMean)
- Angle(XYZ,GravityMean)
