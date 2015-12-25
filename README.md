# DataCleaningProject
Getting and Cleaning Data course project README.md:

This readme file explains the steps involved in reading the raw data, merging the training and test data sets and combining them all into one unified dataset. The repo contains run_analysis.R script that performs the following steps.

1. **Reading raw files from work directory:**
This step assumes that the project file folder **UCI HAR Dataset** is located in the work directory where the run_analysis.R script is executed. You can run the R script on the command line or in RStudio.  

2. **Setting column names:**
The script uses read.table function with header= FALSE option to read the training and test data with their corresponding labels and subject identifier files (X_train.txt, y_train.txt, subject_train.txt, X_test.txt, y_test.txt and subject_test.txt).The column names of X_train and X_test dataframes are updated with 561 feature names extracted from the features.txt file. Whereas the column names of y_train & y_test and subject_train & subject_test are set to "activity" and "subjectID" respectively.

3. **Merging datasets:**
The next step is to merge the training and test datsets into one single file, this is accomplished by using cbind to combine activity,subjectID and the rest of the columns and then calling rbind to stack the training data on top of the test data. 

4. **Subsetting columns:**
In order to subset the dataset and select only columns with mean() or std() in their names grepl and regular expression is utilized.

5. **Activity names:**
A look up table is created for each of the activities with their corresponding values. This look up table is then used to give descriptive names for the activities in the dataset

6. **Appropriately labels:**
The column names are scrubbed and cleaned up to remove special characters such as -()- etc. as well as meaniful names were given for e.g. ACC is changed to LinearAcceleration, Gyro is changed to AngularVelocity, Mag to Magnitude. The gsub function and regular expression is used for this step.

7. **Tidy data:**
The final step in the script is to group the data by subjectID and activity and calculate the mean for all the other measurements. The variable names for the calculated means are updated with a prefix of "groupMean to indicate these are averages for each subjectID and activity group. This tidy dataset is then saved to a destintion file with write.table.
