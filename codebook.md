#**Summary**

Data Set Information:

The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data.



#**Dataset**

The dataset includes the following data files from the Human Activity Recognition Using Smartphones Data Set:

    activity_labels.txt: List of class labels and their activity name.
    
    features.txt: List of features.

    train/subject_train.txt: ID's of the subjects in the training data

    train/X_train.txt: Training data.

    train/y_train.txt: Training labels.

    test/subject_test.txt: ID's of subjects in the training data

    test/X_test.txt: Test data.

    test/y_test.txt: Test labels.



#**Variables**

The variables include the following:

##**Subject**
ID

##**Activity**
ID	Name
1 	WALKING
2 	WALKING_UPSTAIRS
3 	WALKING_DOWNSTAIRS
4 	SITTING
5 	STANDING
6 	LAYING





##**Features**

Column numbers and features are extracted from the original data file, UCI HAR Dataset/features.txt

column number |	column name
--------------------- | -------------------
1 |	tBodyAcc-mean()-X
2 |	tBodyAcc-mean()-Y
3 |	tBodyAcc-mean()-Z
4 |	tBodyAcc-std()-X
5 |	tBodyAcc-std()-Y
6 |	tBodyAcc-std()-Z
41 |	tGravityAcc-mean()-X
42 |	tGravityAcc-mean()-Y
43 |	tGravityAcc-mean()-Z
44 |	tGravityAcc-std()-X
45 |	tGravityAcc-std()-Y
46 |	tGravityAcc-std()-Z
81 |	tBodyAccJerk-mean()-X
82 |	tBodyAccJerk-mean()-Y
83 |	tBodyAccJerk-mean()-Z
84 |	tBodyAccJerk-std()-X
85 |	tBodyAccJerk-std()-Y
86 |	tBodyAccJerk-std()-Z
121 |	tBodyGyro-mean()-X
122 |	tBodyGyro-mean()-Y
123 |	tBodyGyro-mean()-Z
124 |	tBodyGyro-std()-X
125 |	tBodyGyro-std()-Y
126 |	tBodyGyro-std()-Z
161 |	tBodyGyroJerk-mean()-X
162 |	tBodyGyroJerk-mean()-Y
163 |	tBodyGyroJerk-mean()-Z
164 |	tBodyGyroJerk-std()-X
165 |	tBodyGyroJerk-std()-Y
166 |	tBodyGyroJerk-std()-Z
201 |	tBodyAccMag-mean()
202 |	tBodyAccMag-std()
214 |	tGravityAccMag-mean()
215 |	tGravityAccMag-std()
227 |	tBodyAccJerkMag-mean()
228 |	tBodyAccJerkMag-std()
240 |	tBodyGyroMag-mean()
241 |	tBodyGyroMag-std()
253 |	tBodyGyroJerkMag-mean()
254 |	tBodyGyroJerkMag-std()
266 |	fBodyAcc-mean()-X
267 |	fBodyAcc-mean()-Y
268 |	fBodyAcc-mean()-Z
269 |	fBodyAcc-std()-X
270 |	fBodyAcc-std()-Y
271 |	fBodyAcc-std()-Z
345 |	fBodyAccJerk-mean()-X
346 |	fBodyAccJerk-mean()-Y
347 |	fBodyAccJerk-mean()-Z
348 |	fBodyAccJerk-std()-X
349 |	fBodyAccJerk-std()-Y
350 |	fBodyAccJerk-std()-Z
424 |	fBodyGyro-mean()-X
425 |	fBodyGyro-mean()-Y
426 |	fBodyGyro-mean()-Z
427 |	fBodyGyro-std()-X
428 |	fBodyGyro-std()-Y
429 |	fBodyGyro-std()-Z
503 |	fBodyAccMag-mean()
504 |	fBodyAccMag-std()
516 |	fBodyBodyAccJerkMag-mean()
517 |	fBodyBodyAccJerkMag-std()
529 |	fBodyBodyGyroMag-mean()
530 |	fBodyBodyGyroMag-std()
542 |	fBodyBodyGyroJerkMag-mean()
543 |	fBodyBodyGyroJerkMag-std()
