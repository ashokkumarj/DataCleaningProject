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
The units used for the all accelerations (total and body) are 'g's (gravity of earth -> 9.80665 m/seg2) and the units of angular velocity measured by gyroscope are in rad/seg.

Variable #  | Variable Name | Variable Definition
------------ | ------------- | -------------------
1 | subjectID | Unique identification for study participants. 
2 | activity | Unique identification for study participants. 
3 | groupMeanTimeBodyAccelerometerMeanX | Unique identification for study participants. 
4 | groupMeanTimeBodyAccelerometerMeanY | Unique identification for study participants. 
5 | groupMeanTimeBodyAccelerometerMeanZ | Unique identification for study participants. 
6 | groupMeanTimeBodyAccelerometerStdX | Unique identification for study participants. 
7 | groupMeanTimeBodyAccelerometerStdY | Unique identification for study participants. 
8 | groupMeanTimeBodyAccelerometerStdZ | Unique identification for study participants. 
9 | groupMeanTimeGravityAccelerometerMeanX | Unique identification for study participants. 
10 | groupMeanTimeGravityAccelerometerMeanY | Unique identification for study participants. 
11| groupMeanTimeGravityAccelerometerMeanZ | Unique identification for study participants. 
12 | groupMeanTimeGravityAccelerometerStdX | Unique identification for study participants. 
13 | groupMeanTimeGravityAccelerometerStdY | Unique identification for study participants. 
14 | groupMeanTimeGravityAccelerometerStdZ | Unique identification for study participants. 
15 | groupMeanTimeBodyAccelerometerJerkMeanX | Unique identification for study participants. 
16 | groupMeanTimeBodyAccelerometerJerkMeanY | Unique identification for study participants. 
17 | groupMeanTimeBodyAccelerometerJerkMeanZ | Unique identification for study participants. 
18 | groupMeanTimeBodyAccelerometerJerkStdX | Unique identification for study participants. 
19 | groupMeanTimeBodyAccelerometerJerkStdY | Unique identification for study participants. 
20 | groupMeanTimeBodyAccelerometerJerkStdZ | Unique identification for study participants. 
21 | groupMeanTimeBodyGyroscopeMeanX | Unique identification for study participants. 
22 | groupMeanTimeBodyGyroscopeMeanY | Unique identification for study participants. 
23 | groupMeanTimeBodyGyroscopeMeanZ | Unique identification for study participants. 
24 | groupMeanTimeBodyGyroscopeStdX | Unique identification for study participants.
25 | groupMeanTimeBodyGyroscopeStdY | Unique identification for study participants. 
26 | groupMeanTimeBodyGyroscopeStdZ | Unique identification for study participants.
27 | groupMeanTimeBodyGyroscopeJerkMeanX | Unique identification for study participants. 
28 | groupMeanTimeBodyGyroscopeJerkMeanY | Unique identification for study participants.
29 | groupMeanTimeBodyGyroscopeJerkMeanZ | Unique identification for study participants. 
30 | groupMeanTimeBodyGyroscopeJerkStdX | Unique identification for study participants.
31 | groupMeanTimeBodyGyroscopeJerkStdY | Unique identification for study participants. 
32 | groupMeanTimeBodyGyroscopeJerkStdZ | Unique identification for study participants.
33 | groupMeanTimeBodyAccelerometerMagnitudeMean | Unique identification for study participants. 
34 | groupMeanTimeBodyAccelerometerMagnitudeStd | Unique identification for study participants.
35 | groupMeanTimeGravityAccelerometerMagnitudeMean | Unique identification for study participants. 
36 | groupMeanTimeGravityAccelerometerMagnitudeStd | Unique identification for study participants.
37 | groupMeanTimeBodyAccelerometerJerkMagnitudeMean | Unique identification for study participants. 
38 | groupMeanTimeBodyAccelerometerJerkMagnitudeStd | Unique identification for study participants.
39 | groupMeanTimeBodyGyroscopeMagnitudeMean | Unique identification for study participants. 
40 | groupMeanTimeBodyGyroscopeMagnitudeStd | Unique identification for study participants.
41 | groupMeanTimeBodyGyroscopeJerkMagnitudeMean | Unique identification for study participants. 
42 | groupMeanTimeBodyGyroscopeJerkMagnitudeStd | Unique identification for study participants.
43 | groupMeanFreqBodyAccelerometerMeanX | Unique identification for study participants. 
44 | groupMeanFreqBodyAccelerometerMeanY | Unique identification for study participants.
45 | groupMeanFreqBodyAccelerometerMeanZ | Unique identification for study participants. 
46 | groupMeanFreqBodyAccelerometerStdX | Unique identification for study participants.
47 | groupMeanFreqBodyAccelerometerStdY | Unique identification for study participants. 
48 | groupMeanFreqBodyAccelerometerStdZ | Unique identification for study participants.
49 | groupMeanFreqBodyAccelerometerJerkMeanX | Unique identification for study participants. 
50 | groupMeanFreqBodyAccelerometerJerkMeanY | Unique identification for study participants.
51 | groupMeanFreqBodyAccelerometerJerkMeanZ | Unique identification for study participants.
52 | groupMeanFreqBodyAccelerometerJerkStdX | Unique identification for study participants. 
53 | groupMeanFreqBodyAccelerometerJerkStdY | Unique identification for study participants. 
54 | groupMeanFreqBodyAccelerometerJerkStdZ | Unique identification for study participants. 
55 | groupMeanFreqBodyGyroscopeMeanX | Unique identification for study participants. 
56 | groupMeanFreqBodyGyroscopeMeanY | Unique identification for study participants. 
57 | groupMeanFreqBodyGyroscopeMeanZ | Unique identification for study participants. 
58 | groupMeanFreqBodyGyroscopeStdX | Unique identification for study participants. 
59 | groupMeanFreqBodyGyroscopeStdY | Unique identification for study participants. 
60 | groupMeanFreqBodyGyroscopeStdZ | Unique identification for study participants
61 | groupMeanFreqBodyAccelerometerMagnitudeMean | Unique identification for study participants
62 | groupMeanFreqBodyAccelerometerMagnitudeStd | Unique identification for study participants. 
63 | groupMeanFreqBodyAccelerometerJerkMagnitudeMean | Unique identification for study participants. 
64 | groupMeanFreqBodyAccelerometerJerkMagnitudeStd | Unique identification for study participants. 
65 | groupMeanFreqBodyGyroscopeMagnitudeMean | Unique identification for study participants. 
66 | groupMeanFreqBodyGyroscopeMagnitudeStd | Unique identification for study participants. 
67 | groupMeanFreqBodyGyroscopeJerkMagnitudeMean | Unique identification for study participants. 
68 | groupMeanFreqBodyGyroscopeJerkMagnitudeStd | Unique identification for study participants. 

