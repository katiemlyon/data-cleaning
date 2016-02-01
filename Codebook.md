# Codebook
This codebook describes the dataset, the individual data files, and the variables.

## Data
- Data: [https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip](https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip)
- Description of the dataset: [http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones)

## Files
The dataset includes the following files:
- features_info.txt: Information about the variables used on the feature vector.
- 'features.txt': List of all features.
- 'activity_labels.txt': Links the activity number with the activity name.
- 'train/subject_train.txt': ID of the subject who performed the activity.
- 'train/X_train.txt': Training set.
- 'train/y_train.txt': Training labels.
- 'test/subject_test.txt': ID of the subject who performed the activity.
- 'test/X_test.txt': Test set.
- 'test/y_test.txt': Test labels.

## Variables
The following table contains descriptions of variables in the tidy dataset.

Variable                 | Description
------------------------ | ----------------------------------------------------------------------------------
id                       | ID number of subject
activity                 | Name of activity
tbodyaccmeanx            | Average of Mean Value time doman Body Accelration in x direction
tbodyaccmeany            | Average of Mean Value time doman Body Accelration in Y direction
tbodyaccmeanz            | Average of Mean Value time doman Body Accelration in Z direction
tbodyaccstdx             | Average of Standard deviation time doman Body Accelration in x direction
tbodyaccstdy             | Average of Standard deviation time doman Body Accelration in Y direction
tbodyaccstdz             | Average of Standard deviation time doman Body Accelration in Z direction
tgravityaccmeanx         | Average of Mean Value time doman Gravity Accelrationin x direction
tgravityaccmeany         | Average of Mean Value time doman Gravity Accelrationin Y direction
tgravityaccmeanz         | Average of Mean Value time doman Gravity Accelrationin Z direction
tgravityaccstdx          | Average of Standard deviation time doman Gravity Accelrationin x direction
tgravityaccstdy          | Average of Standard deviation time doman Gravity Accelrationin Y direction
tgravityaccstdz          | Average of Standard deviation time doman Gravity Accelrationin Z direction
tbodyaccjerkmeanx        | Average of Mean Value time doman Body Accelration Jerk in x direction
tbodyaccjerkmeany        | Average of Mean Value time doman Body Accelration Jerk in Y direction
tbodyaccjerkmeanz        | Average of Mean Value time doman Body Accelration Jerk in Z direction
tbodyaccjerkstdx         | Average of Standard deviation time doman Body Accelration Jerk in x direction
tbodyaccjerkstdy         | Average of Standard deviation time doman Body Accelration Jerk in Y direction
tbodyaccjerkstdz         | Average of Standard deviation time doman Body Accelration Jerk in Z direction
tbodygyromeanx           | Average of Mean Value time doman Body Gyro in x direction
tbodygyromeany           | Average of Mean Value time doman Body Gyro in Y direction
tbodygyromeanz           | Average of Mean Value time doman Body Gyro in Z direction
tbodygyrostdx            | Average of Standard deviation time doman Body Gyro in x direction
tbodygyrostdy            | Average of Standard deviation time doman Body Gyro in Y direction
tbodygyrostdz            | Average of Standard deviation time doman Body Gyro in Z direction
tbodygyrojerkmeanx       | Average of Mean Value time doman Body Gyro Jerk signal in x direction
tbodygyrojerkmeany       | Average of Mean Value time doman Body Gyro Jerk signal in Y direction
tbodygyrojerkmeanz       | Average of Mean Value time doman Body Gyro Jerk signal in Z direction
tbodygyrojerkstdx        | Average of Standard deviation time doman Body Gyro Jerk signal in x direction
tbodygyrojerkstdy        | Average of Standard deviation time doman Body Gyro Jerk signal in Y direction
tbodygyrojerkstdz        | Average of Standard deviation time doman Body Gyro Jerk signal in Z direction
tbodyaccmagmean          | Average of Mean Value time doman Body Accelration magnitude
tbodyaccmagstd           | Average of Standard deviation time doman Body Accelration magnitude
tgravityaccmagmean       | Average of Mean Value time doman Gravity Accelration magnitude
tgravityaccmagstd        | Average of Standard deviation time doman Gravity Accelration magnitude
tbodyaccjerkmagmean      | Average of Mean Value time doman Body Accelration jerk magnitude
tbodyaccjerkmagstd       | Average of Standard deviation time doman Body Accelration jerk magnitude
tbodygyromagmean         | Average of Mean Value time doman Body Gyro magnitude
tbodygyromagstd          | Average of Standard deviation time doman Body Gyro magnitude
tbodygyrojerkmagmean     | Average of Mean Value time doman Body Gyro Jerk magnitude
tbodygyrojerkmagstd      | Average of Standard deviation time doman Body Gyro Jerk magnitude
fbodyaccmeanx            | Average of Mean Value frequency domainBody Accelration in x direction
fbodyaccmeany            | Average of Mean Value frequency domainBody Accelration in Y direction
fbodyaccmeanz            | Average of Mean Value frequency domainBody Accelration in Z direction
fbodyaccstdx             | Average of Standard deviation frequency domainBody Accelration in x direction
fbodyaccstdy             | Average of Standard deviation frequency domainBody Accelration in Y direction
fbodyaccstdz             | Average of Standard deviation frequency domainBody Accelration in Z direction
fbodyaccjerkmeanx        | Average of Mean Value frequency domainBody Accelration Jerk in x direction
fbodyaccjerkmeany        | Average of Mean Value frequency domainBody Accelration Jerk in Y direction
fbodyaccjerkmeanz        | Average of Mean Value frequency domainBody Accelration Jerk in Z direction
fbodyaccjerkstdx         | Average of Standard deviation frequency domainBody Accelration Jerk in x direction
fbodyaccjerkstdy         | Average of Standard deviation frequency domainBody Accelration Jerk in Y direction
fbodyaccjerkstdz         | Average of Standard deviation frequency domainBody Accelration Jerk in Z direction
fbodygyromeanx           | Average of Mean Value frequency domainBody Gyro in x direction
fbodygyromeany           | Average of Mean Value frequency domainBody Gyro in Y direction
fbodygyromeanz           | Average of Mean Value frequency domainBody Gyro in Z direction
fbodygyrostdx            | Average of Standard deviation frequency domainBody Gyro in x direction
fbodygyrostdy            | Average of Standard deviation frequency domainBody Gyro in Y direction
fbodygyrostdz            | Average of Standard deviation frequency domainBody Gyro in Z direction
fbodyaccmagmean          | Average of Mean Value frequency domainBody Accelration magnitude
fbodyaccmagstd           | Average of Standard deviation frequency domainBody Accelration magnitude
fbodybodyaccjerkmagmean  | Average of Mean Value frequency domainBody Accelration jerk magnitude
fbodybodyaccjerkmagstd   | Average of Standard deviation frequency domainBody Accelration jerk magnitude
fbodybodygyromagmean     | Average of Mean Value frequency domainBody Body Gyro magnitude
fbodybodygyromagstd      | Average of Standard deviation frequency domainBody Body Gyro magnitude
fbodybodygyrojerkmagmean | Average of Mean Value frequency domainBody Body Gyro jerk magnitude
fbodybodygyrojerkmagstd  | Average of Standard deviation frequency domainBody Body Gyro jerk magnitude
