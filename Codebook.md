CodeBook
========

This codebook describes the data files and the data processing performed to clean up the data.

Data Source
-----------

-	Original data: [https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip](https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip)
-	Original description of the dataset: [http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones)

Files
-----

The dataset includes the following files: - 'features_info.txt': Shows information about the variables used on the feature vector. - 'features.txt': List of all features. - 'activity_labels.txt': Links the class labels with their activity name. - 'train/subject_train.txt': ID of the subject who performed the activity. - 'train/X_train.txt': Training set. - 'train/y_train.txt': Training labels. - 'test/subject_test.txt': ID of the subject who performed the activity. - 'test/X_test.txt': Test set. - 'test/y_test.txt': Test labels.

Data Processing
---------------

1.	Merge the training and the test sets to create one data set.
2.	Extract only the measurements on the mean and standard deviation for each measurement.
3.	Use descriptive activity names to name the activities in the data set
4.	Appropriately label the data set with descriptive activity names.
5.	Create a second, independent tidy data set with the average of each variable for each activity and each subject.
