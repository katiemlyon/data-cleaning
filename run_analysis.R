# Getting and Cleaning Data Course Project

# Create one R script called run_analysis.R that does the following:
# Merges the training and the test sets to create one data set.
# Extracts only the measurements on the mean and standard deviation for each measurement.
# Uses descriptive activity names to name the activities in the data set
# Appropriately labels the data set with descriptive variable names.
# From the data set in step 4, creates a second, independent tidy data set 
# with the average of each variable for each activity and each subject.

# load required packages
library(reshape2)

# download the data
if(!file.exists("data")){
  dir.create("data")
}
file <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
download.file(file, "data/UCI HAR Dataset.zip", method="curl")

#unzip the file
unzip(zipfile="data/UCI HAR Dataset.zip", exdir="data")

## Step 1: Merge the training and the test sets to create one data set

# read in training data
subject_train <- read.table("data/UCI HAR Dataset/train/subject_train.txt")
X_train <- read.table("data/UCI HAR Dataset/train/X_train.txt")
y_train <- read.table("data/UCI HAR Dataset/train/y_train.txt")

# read in test data
subject_test <- read.table("data/UCI HAR Dataset/test/subject_test.txt")
X_test <- read.table("data/UCI HAR Dataset/test/X_test.txt")
y_test <- read.table("data/UCI HAR Dataset/test/y_test.txt")

# add column name for subject files
names(subject_train) <- "id"
names(subject_test) <- "subjectid"

# Get the variable names
features <- read.table("data/UCI HAR Dataset/features.txt", sep = " ", col.names = c("column.id", "varname"))

# function to clean up variable names
scrubber <- function(messy){
  messy <- sub("\\()-", "", messy)
  messy <- sub("\\()", "", messy)
  messy <- gsub("-", "", messy)
  messy <- sub("\\(", "", messy)
  messy <- gsub("\\)", "", messy)
  messy <- sub("\\,", "", messy)
  messy <- tolower(messy)
  return(messy)
}

# Now scrub the variable names
features$scrubbed <- scrubber(features$varname)

# add column names for measurement files
names(X_train) <- features$scrubbed
names(X_test) <- features$scrubbed

# add column name for label files
names(y_train) <- "activity"
names(y_test) <- "activity"

# combine files into one dataset
train <- cbind(subject_train, y_train, X_train)
test <- cbind(subject_test, y_test, X_test)
combined <- rbind(train, test)



## Step 2: Extract only the measurements on the mean and standard deviation for each measurement.

# determine which columns contain "mean()" or "std()"
meanstd <- grepl("mean", names(combined)) | grepl("std", names(combined))

# keep the id and activity columns
meanstd[1:2] <- TRUE
meanstd

# keep mean and std columns, remove unnecessary columns
combined <- combined[, meanstd]


## Step 3: Use descriptive activity names to name the activities in the data set.

## Step 4: Label the data set with descriptive activity names. 

# convert the activity column from integer to factor
combined$activity <- factor(combined$activity, 
                            labels=c("Walking",
                                     "Walking Upstairs", 
                                     "Walking Downstairs", 
                                     "Sitting", 
                                     "Standing", 
                                     "Laying"))


## Step 5: Create a second, independent tidy data set with the
## average of each variable for each activity and each subject.

# melt the data set and make it tidy
melted <- melt(combined, id = c("id", "activity"))
tidy <- dcast(melted, id + activity ~ variable, mean)


# write the tidy data set to a file
write.csv(tidy, "tidy.csv", row.names=FALSE)
write.table(tidy, "tidy.txt", row.names=FALSE)

# write the new variable names to a file
write.table(colnames(tidy), row.names = FALSE, "names.txt")
