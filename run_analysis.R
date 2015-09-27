
# The data is from "Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine".
# International Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012

# This script merges data from a number of .txt files and produces a tidy data set 


# Merge the subject training and the test sets to create one data set.

make_test_train_dataset <- function() {
  subject_test <- read.table('./UCI HAR Dataset/test/subject_test.txt')
  subject_train <- read.table('./UCI HAR Dataset/train/subject_train.txt')
  test_train_merged <- rbind(subject_train, subject_test)
  names(test_train_merged) <- "subject"
  test_train_merged
}

make_X_dataset <- function() {
  X_test <- read.table('./UCI HAR Dataset/test/X_test.txt')
  X_train <- read.table('./UCI HAR Dataset/train/X_train.txt')
  X_merged  <- rbind(X_train, X_test)
}

make_y_dataset <- function() {
  y_test <- read.table('./UCI HAR Dataset/test/y_test.txt')
  y_train <- read.table('./UCI HAR Dataset/train/y_train.txt')
  y_merged  <- rbind(y_train, y_test)
}

test_train_dataset <- make_test_train_dataset()
X_dataset <- make_X_dataset()
y_dataset <- make_y_dataset()


# Extract only the measurements on the mean and standard deviation for each measurement and then drop other values. 

selected_measurements <- function() {
  features <- read.table('./UCI HAR Dataset/features.txt', header=FALSE, col.names=c('id', 'name'))
  feature_selected_columns <- grep('mean\\(\\)|std\\(\\)', features$name)
  filtered_dataset <- X_dataset[, feature_selected_columns]
  names(filtered_dataset) <- features[features$id %in% feature_selected_columns, 2]
  filtered_dataset
}

X_filtered_dataset <- selected_measurements()

# Name the activities in the data set using the activity labels

activity_labels <- read.table('./UCI HAR Dataset/activity_labels.txt', header=FALSE, col.names=c('id', 'name'))


# 4) Populate the data set with descriptive activity names. 

y_dataset[, 1] = activity_labels[y_dataset[, 1], 2]
names(y_dataset) <- "activity"


# Assemble an intermediate dataset with all required measurements.

full_dataset <- cbind(test_train_dataset, y_dataset, X_filtered_dataset)


# Createtidy data set with the average of each variable for each activity and each subject.

measurements <- full_dataset[, 3:dim(full_dataset)[2]]
tidy_dataset <- aggregate(measurements, list(full_dataset$subject, full_dataset$activity), mean)
names(tidy_dataset)[1:2] <- c('subject', 'activity')
write.table(tidy_dataset, "./tidy_dataset.txt", row.names = FALSE)