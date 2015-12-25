### Load library

library(data.table)

#### read train data set, labels and subject id's 

X_train <- read.table("./train/X_train.txt",header = FALSE)

y_train <- read.table("./train/y_train.txt",header = FALSE)

subject_train <- read.table("./train/subject_train.txt",header = FALSE)

#### reat test data set labels and subject id's 

X_test <- read.table("./test/X_test.txt",header = FALSE)

y_test <- read.table("./test/y_test.txt",header = FALSE)

subject_test <- read.table("./test/subject_test.txt",header = FALSE)

#### reat features.txt file to populate the columsn names

featurenames <- read.table("./features.txt",header = FALSE)
feat <- featurenames[,2]

#### set columsn names for x_train,X_test,y_test, y_train, subject_test and subject_train

colnames(X_test) <- feat

colnames(X_train) <- feat

colnames(y_test) <- c("activity")

colnames(y_train) <-  c("activity") 

colnames(subject_test) <-  c("subjectID")

colnames(subject_train) <- c("subjectID")

#### select only columns that contain mean() or std() in their names

X_test <- X_test[,grepl("mean\\(\\)|std\\(\\)", colnames(X_test))]

X_train <- X_train[,grepl("mean\\(\\)|std\\(\\)", colnames(X_train))]

### combine features, lables and subject ID's for training and test data 

xtestmerged <- cbind(subject_test,X_test,y_test)

xtrainmerged <- cbind(subject_train,X_train,y_train)

### merge training and test data 

merged <- rbind(xtrainmerged,xtestmerged)

#### create a look up table with the activity names and use them instead of numbers

lookup <- c("1"="WALKING", "2"="WALKING_UPSTAIRS", "3"="WALKING_DOWNSTAIRS", "4"="SITTING",  "5"="STANDING", "6"="LAYING")
merged$activity <- lookup[merged$activity]

#### fix column names by removing special characters and giving meaninful names

orgnames <- colnames(merged)

orgnames <- gsub("-mean\\(\\)-*", "Mean", orgnames)

orgnames <- gsub("-std\\(\\)-*", "Std", orgnames)

orgnames <-gsub("^t", "time", orgnames)

orgnames <-gsub("^f", "freq", orgnames)

orgnames <-gsub("+Acc+", "Accelerometer", orgnames)

orgnames <-gsub("+Gyro+", "Gyroscope", orgnames)

orgnames <-gsub("Mag", "Magnitude", orgnames)

orgnames <-gsub("+BodyBody+", "Body", orgnames)

colnames(merged) <- orgnames

#### create a summary table and calculate mean grouped by subjectID, activity and prefix to column names.

DT <- data.table(merged)

summarydt <- DT[, lapply(.SD,mean), by=list(subjectID, activity)]

summarynames <- colnames(summarydt)

summarynames <-gsub("^time", "groupMeanTime", summarynames)

summarynames <-gsub("^freq", "groupMeanFreq", summarynames)

colnames(summarydt) <- summarynames

#### sort tidy data by subjectID and activity.

sorted <- summarydt[order(subjectID,activity)] 

#### write tidy data to the destination folder.

dest <- "./tidyData.txt"

write.table(sorted,dest,col.names = T,row.names=F)
