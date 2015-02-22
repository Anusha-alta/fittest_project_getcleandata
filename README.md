### fittest_project_getcleandata
Repo for Fittest project in Getting and Cleaning Data course on Coursera

==================================================================
Aggregate Human Activity Recognition Using Smartphones Dataset
Version 1.0
===========================================================================
Anusha Iyengar
Coursera-Getting and Cleaning Data: Course project to analysis fitness data
===========================================================================

###The dataset includes the following files
===========================================================================
## 'run_analysis.R' 
   This R program analyses train and test fitness data located at https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip.

   There are 180 rows and 68 columns in the final dataset. 

   Each record provides Subject, Activity_label and Averages of Means and Standard Deviation data extracted from the original Data set. List of column names included at the end of this file.  
  
*A Brief description of the process that went in to creating the final dataset* 

*Description of Source data*

   The *source fitness data* consists of results from experiments carried out with a group of 30 volunteers. Each volunteer wears a Samsung Galaxy SII phone while performing these six  
   activities- WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING and LAYING. 30% of the data gathered was treated as "test" data and 70% as "train" data.

  Following are the files included in the directory

- 'README.txt'

- 'features_info.txt': Shows information about the variables used on the feature vector.

- 'features.txt': List of all features.

- 'activity_labels.txt': Links the class labels with their activity name.

- 'train/X_train.txt': Training set.

- 'train/y_train.txt': Training labels.

- 'train/subject_train.txt': Subjects (list of numbers 1 - 30 representing the 30 volunteers)

- 'test/X_test.txt': Test set.

- 'test/y_test.txt': Test labels.

- 'test/subject_test.txt': Subjects (list of numbers 1 - 30 representing the 30 volunteers).

*Description of run_analysis.R* 

*run_analysis.R* reads files common to both test and train and converts to data frames. 
	
	- features.txt, activity_labels.txt. 
* To make compile data frame for Training data (similar process is followed for test data) 

	- read files train/X_train.tx, train/y_train.txt, train/subject_train.txt and convert to Data frame

	- merge subject_df, y_train_df and x_train_df

	- assign activity_labels to each activity by using the y_train_df in conjuction with activity_labels_df. 

        - To the resultant df, assigns "features" as column names to all the variable columns. i.e. the all columns except Activity Label and Subject. 

* Test data is compiled in a similar fashion. 

* Test and Train data frames are combined using cbind.

* A data frame consisting of only means and standard deviations is extracted from the above data set. 

* Meanfreq and angle means are ignored in this process because I did not feel these variables represented the true means of the test or train data 

* Created a tidy data set by making sure each row exhibited just one observation. This was achieved using the Melt function. 

* 

# 'Codebook.md'
Describe  variables in the final dataset. 


###**********************************************Appendix*****************###
*List of aggregate columns in the final data set. 
Time.BodyAcc.Mean.X
Time.BodyAcc.Mean.Y
Time.BodyAcc.Mean.Z
Time.GravityAcc.Mean.X
Time.GravityAcc.Mean.Y
Time.GravityAcc.Mean.Z
Time.BodyAccJerk.Mean.X
Time.BodyAccJerk.Mean.Y
Time.BodyAccJerk.Mean.Z
Time.BodyGyro.Mean.X
Time.BodyGyro.Mean.Y
Time.BodyGyro.Mean.Z
Time.BodyGyroJerk.Mean.X
Time.BodyGyroJerk.Mean.Y
Time.BodyGyroJerk.Mean.Z
Time.BodyAccMag-mean
Time.GravityAccMag-mean
Time.BodyAccJerkMag-mean
Time.BodyGyroMag-mean
Time.BodyGyroJerkMag-mean
Frequency.BodyAcc.Mean.X
Frequency.BodyAcc.Mean.Y
Frequency.BodyAcc.Mean.Z
Frequency.BodyAccJerk.Mean.X
Frequency.BodyAccJerk.Mean.Y
Frequency.BodyAccJerk.Mean.Z
Frequency.BodyGyro.Mean.X
Frequency.BodyGyro.Mean.Y
Frequency.BodyGyro.Mean.Z
Frequency.BodyAccMag-mean
Frequency.BodyBodyAccJerkMag-mean
Frequency.BodyBodyGyroMag-mean
Frequency.BodyBodyGyroJerkMag-mean
Time.BodyAcc-std-X
Time.BodyAcc-std-Y
Time.BodyAcc-std-Z
Time.GravityAcc-std-X
Time.GravityAcc-std-Y
Time.GravityAcc-std-Z
Time.BodyAccJerk-std-X
Time.BodyAccJerk-std-Y
Time.BodyAccJerk-std-Z
Time.BodyGyro-std-X
Time.BodyGyro-std-Y
Time.BodyGyro-std-Z
Time.BodyGyroJerk-std-X
Time.BodyGyroJerk-std-Y
Time.BodyGyroJerk-std-Z
Time.BodyAccMag-std
Time.GravityAccMag-std
Time.BodyAccJerkMag-std
Time.BodyGyroMag-std
Time.BodyGyroJerkMag-std
Frequency.BodyAcc-std-X
Frequency.BodyAcc-std-Y
Frequency.BodyAcc-std-Z
Frequency.BodyAccJerk-std-X
Frequency.BodyAccJerk-std-Y
Frequency.BodyAccJerk-std-Z
Frequency.BodyGyro-std-X
Frequency.BodyGyro-std-Y
Frequency.BodyGyro-std-Z
Frequency.BodyAccMag-std
Frequency.BodyBodyAccJerkMag-std
Frequency.BodyBodyGyroMag-std
Frequency.BodyBodyGyroJerkMag-std
