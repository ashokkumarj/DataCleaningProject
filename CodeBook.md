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


