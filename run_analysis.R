# Read Feature and Activity Labels
features <- read.table("UCI HAR Dataset/features.txt")
activities <- read.table("UCI HAR Dataset/activity_labels.txt")

# Read and combine training data
train.subjects <- read.table("UCI HAR Dataset/train/subject_train.txt")
train.activities <- read.table("UCI HAR Dataset/train/y_train.txt")
train.features <- read.table("UCI HAR Dataset/train/X_train.txt")
train <- cbind(train.subjects, train.activities, train.features)

# Read and combine test data
test.subjects <- read.table("UCI HAR Dataset/test/subject_test.txt")
test.activities <- read.table("UCI HAR Dataset/test/y_test.txt")
test.features <- read.table("UCI HAR Dataset/test/X_test.txt")
test <- cbind(test.subjects, test.activities, test.features)

# Combine training and test data, add column names and activity labels
all.data <- rbind(train, test)
names(all.data) = c("Subject", "Activity", as.character(features[[2]]))
all.data$Activity <- factor(all.data$Activity, levels = activities[[1]], labels = activities[[2]])

# Select only the feature columns for "mean" and "standard deviation" measurements
columns <- grepl("mean\\(\\)", names(all.data)) | grepl("std\\(\\)", names(all.data)) | names(all.data) %in% c("Subject", "Activity")
tidy.measurements <- all.data[,columns]

# Summarize the data as averages and write the results to a file
tidy.averages <- aggregate(tidy.measurements[,-(1:2)], list(Subject = tidy.measurements$Subject, Activity = tidy.measurements$Activity), mean)
write.table(tidy.averages, "tidy.averages.txt", row.name=FALSE)