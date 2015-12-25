Getting and Cleaning Data Project CodeBook.md

**Introduction:**
The following data dictionary describes the Human Activity Recognition Using Smartphones Dataset carried out with a group of 30 volunteers. In addition to this introduction, the data dictionary.Each subjects activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) was measured using the smartphoes embedded accelerometer and gyroscope sensors.The linear accelaration and angular velocity was measured in the X, Y an Z axices. The raw signals are preprossed and resulting data with 561 features was split into training and test datasets with 70% - 30% split. The dataset also contains the supervised labels and the subject id's in seperate files.

More information on how the data was gathered is located in the following publication:

*[1] Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. A Public Domain Dataset for Human Activity Recognition Using Smartphones. 21th European Symposium on Artificial Neural Networks, Computational Intelligence and Machine Learning, ESANN 2013. Bruges, Belgium 24-26 April 2013.*

**Cleaning:**
The raw datasets were read into R and the train and test datasets along with their labels and subject id's were merged. Then variables with only mean() and std() in their names were selcted. The varialbe names were scrubbed and special characters were removed and domain specific names were replaced with more meaningful names. Finally this dataset with only 66 measurement variables was grouped by activity and subject ID and their means were calculated.

**Tidy Data Description:**
The tidy data created from the raw data contains 180 observations across 68 variables. Each row represents the mean values of the 66 measurement variables for each subject ID and activity combination.

**List of Variables:**
The following are the variables included in tidy dataset. 
The units used for the all accelerations (total and body) are 'g's (gravity of earth -> 9.80665 m/seg2) and the units of angular velocity measured by gyroscope are in rad/seg. The **groupMean** prefix for all the varialbes below in the tidy data represents the mean of all measurement variables for each subject ID and activity combination.

Variable #  | Variable Name | Variable Definition
------------ | ------------- | -------------------
1 | subjectID | Unique identification for study participants. 
2 | activity | List of activities carried out by study participants. e.g Walking, Sitting 
3 | groupMeanTimeBodyAccelerometerMeanX | Mean linear accelaration of the body measured by Accelerometer along the X axis. 
4 | groupMeanTimeBodyAccelerometerMeanY | Mean linear accelaration of the body measured by Accelerometer along the Y axis. 
5 | groupMeanTimeBodyAccelerometerMeanZ | Mean linear accelaration of the body measured by Accelerometer along the Z axis. 
6 | groupMeanTimeBodyAccelerometerStdX | Mean standard deviation linear accelaration of the body measured by Accelerometer along the X axis. 
7 | groupMeanTimeBodyAccelerometerStdY | Mean standard deviation linear accelaration of the body measured by Accelerometer along the Y axis. 
8 | groupMeanTimeBodyAccelerometerStdZ | Mean standard deviation linear accelaration of the body measured by Accelerometer along the Z axis.
9 | groupMeanTimeGravityAccelerometerMeanX | Mean linear accelaration of the gravity measured by Accelerometer along the X axis.
10 | groupMeanTimeGravityAccelerometerMeanY | Mean linear accelaration of the gravity measured by Accelerometer along the Y axis. 
11| groupMeanTimeGravityAccelerometerMeanZ | Mean linear accelaration of the gravity measured by Accelerometer along the Z axis.
12 | groupMeanTimeGravityAccelerometerStdX | Mean standard deviation linear accelaration of the gravity measured by Accelerometer along the X axis.
13 | groupMeanTimeGravityAccelerometerStdY | Mean standard deviation linear accelaration of the gravity measured by Accelerometer along the Y axis.
14 | groupMeanTimeGravityAccelerometerStdZ | Mean standard deviation linear accelaration of the gravity measured by Accelerometer along the Z axis.
15 | groupMeanTimeBodyAccelerometerJerkMeanX | Mean jerk accelaration of the body measured by Accelerometer along the X axis. 
16 | groupMeanTimeBodyAccelerometerJerkMeanY | Mean jerk accelaration of the body measured by Accelerometer along the Y axis.
17 | groupMeanTimeBodyAccelerometerJerkMeanZ | Mean jerk accelaration of the body measured by Accelerometer along the Z axis.
18 | groupMeanTimeBodyAccelerometerJerkStdX | Mean standard deviation jerk accelaration of the body measured by Accelerometer along the X axis.
19 | groupMeanTimeBodyAccelerometerJerkStdY | Mean standard deviation jerk accelaration of the body measured by Accelerometer along the Y axis. 
20 | groupMeanTimeBodyAccelerometerJerkStdZ | Mean standard deviation jerk accelaration of the body measured by Accelerometer along the Z axis. 
21 | groupMeanTimeBodyGyroscopeMeanX | Mean angular velocity of the body measured by Gyroscope along the X axis. 
22 | groupMeanTimeBodyGyroscopeMeanY | Mean angular velocity of the body measured by Gyroscope along the Y axis.
23 | groupMeanTimeBodyGyroscopeMeanZ | Mean angular velocity of the body measured by Gyroscope along the Z axis. 
24 | groupMeanTimeBodyGyroscopeStdX | Mean standard deviation angular velocity of the body measured by Gyroscope along the X axis.
25 | groupMeanTimeBodyGyroscopeStdY | Mean standard deviation angular velocity of the body measured by Gyroscope along the Y axis. 
26 | groupMeanTimeBodyGyroscopeStdZ | Mean standard deviation angular velocity of the body measured by Gyroscope along the Z axis.
27 | groupMeanTimeBodyGyroscopeJerkMeanX | Mean jerk angular velocity of the body measured by Gyroscope along the X axis. 
28 | groupMeanTimeBodyGyroscopeJerkMeanY | Mean jerk angular velocity of the body measured by Gyroscope along the X axis
29 | groupMeanTimeBodyGyroscopeJerkMeanZ | Mean jerk angular velocity of the body measured by Gyroscope along the X axis 
30 | groupMeanTimeBodyGyroscopeJerkStdX | Mean standard deviation jerk angular velocity of the body measured by Gyroscope along the X axis
31 | groupMeanTimeBodyGyroscopeJerkStdY | Mean standard deviation jerk angular velocity of the body measured by Gyroscope along the X axis 
32 | groupMeanTimeBodyGyroscopeJerkStdZ | Mean standard deviation jerk angular velocity of the body measured by Gyroscope along the X axis
33 | groupMeanTimeBodyAccelerometerMagnitudeMean | Mean linear accelaration magnitude of the body measured by Accelerometer.  
34 | groupMeanTimeBodyAccelerometerMagnitudeStd | Mean std of linear accelaration magnitude of the body measured by Accelerometer.
35 | groupMeanTimeGravityAccelerometerMagnitudeMean | Mean linear accelaration magnitude of gravity measured by Accelerometer. 
36 | groupMeanTimeGravityAccelerometerMagnitudeStd | Mean std linear accelaration magnitude of gravity measured by Accelerometer.
37 | groupMeanTimeBodyAccelerometerJerkMagnitudeMean | Mean jerk accelaration magnitude of the body measured by Accelerometer. 
38 | groupMeanTimeBodyAccelerometerJerkMagnitudeStd | Mean std jerk accelaration magnitude of the body measured by Accelerometer.
39 | groupMeanTimeBodyGyroscopeMagnitudeMean |  Mean angular velocity magnitude of the body measured by Gyroscope. 
40 | groupMeanTimeBodyGyroscopeMagnitudeStd | Mean std angular velocity magnitude of the body measured by Gyroscope. 
41 | groupMeanTimeBodyGyroscopeJerkMagnitudeMean | Mean jerk angular velocity magnitude of the body measured by Gyroscope.
42 | groupMeanTimeBodyGyroscopeJerkMagnitudeStd | Mean std jerk angular velocity magnitude of the body measured by Gyroscope.
43 | groupMeanFreqBodyAccelerometerMeanX | Mean linear accelaration of the body measured by Accelerometer in frequency domain along the X axis. 
44 | groupMeanFreqBodyAccelerometerMeanY | Mean linear accelaration of the body measured by Accelerometer in frequency domain along the Y axis. 
45 | groupMeanFreqBodyAccelerometerMeanZ | Mean linear accelaration of the body measured by Accelerometer in frequency domain along the Z axis. 
46 | groupMeanFreqBodyAccelerometerStdX | Mean std linear accelaration of the body measured by Accelerometer in frequency domain along the X axis. 
47 | groupMeanFreqBodyAccelerometerStdY | Mean std linear accelaration of the body measured by Accelerometer in frequency domain along the Y axis. 
48 | groupMeanFreqBodyAccelerometerStdZ | Mean std linear accelaration of the body measured by Accelerometer in frequency domain along the Z axis. 
49 | groupMeanFreqBodyAccelerometerJerkMeanX | Mean jerk linear accelaration of the body measured by Accelerometer in frequency domain along the X axis.  
50 | groupMeanFreqBodyAccelerometerJerkMeanY | Mean jerk linear accelaration of the body measured by Accelerometer in frequency domain along the Y axis.  
51 | groupMeanFreqBodyAccelerometerJerkMeanZ | Mean jerk linear accelaration of the body measured by Accelerometer in frequency domain along the Z axis.  
52 | groupMeanFreqBodyAccelerometerJerkStdX | Mean std jerk linear accelaration of the body measured by Accelerometer in frequency domain along the X axis.  
53 | groupMeanFreqBodyAccelerometerJerkStdY | Mean std jerk linear accelaration of the body measured by Accelerometer in frequency domain along the Y axis.  
54 | groupMeanFreqBodyAccelerometerJerkStdZ | Mean std jerk linear accelaration of the body measured by Accelerometer in frequency domain along the Z axis. 
55 | groupMeanFreqBodyGyroscopeMeanX | Mean angular velocity of the body measured by Gyroscope in frequency domain along the X axis. 
56 | groupMeanFreqBodyGyroscopeMeanY | Mean angular velocity of the body measured by Gyroscope in frequency domain along the Y axis. 
57 | groupMeanFreqBodyGyroscopeMeanZ | Mean angular velocity of the body measured by Gyroscope in frequency domain along the Z axis. 
58 | groupMeanFreqBodyGyroscopeStdX | Mean std angular velocity of the body measured by Gyroscope in frequency domain along the X axis. 
59 | groupMeanFreqBodyGyroscopeStdY | Mean std angular velocity of the body measured by Gyroscope in frequency domain along the Y axis. 
60 | groupMeanFreqBodyGyroscopeStdZ | Mean std angular velocity of the body measured by Gyroscope in frequency domain along the Z axis. 
61 | groupMeanFreqBodyAccelerometerMagnitudeMean | Mean linear accelaration magnitude of the body measured by Accelerometer in frequency domain.
62 | groupMeanFreqBodyAccelerometerMagnitudeStd | Mean std linear accelaration magnitude of the body measured by Accelerometer in frequency domain.
63 | groupMeanFreqBodyAccelerometerJerkMagnitudeMean | Mean jerk linear accelaration magnitude of the body measured by Accelerometer in frequency domain.
64 | groupMeanFreqBodyAccelerometerJerkMagnitudeStd | Mean std jerk linear accelaration magnitude of the body measured by Accelerometer in frequency domain. 
65 | groupMeanFreqBodyGyroscopeMagnitudeMean | Mean angular velocity magnitude of the body measured by Gyroscope in frequency domain.
66 | groupMeanFreqBodyGyroscopeMagnitudeStd | Mean std angular velocity magnitude of the body measured by Gyroscope in frequency domain. 
67 | groupMeanFreqBodyGyroscopeJerkMagnitudeMean | Mean jerk angular velocity magnitude of the body measured by Gyroscope in frequency domain.
68 | groupMeanFreqBodyGyroscopeJerkMagnitudeStd | Mean std jerk angular velocity magnitude of the body measured by Gyroscope in frequency domain.

