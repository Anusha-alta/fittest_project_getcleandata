## CodeBook describing data in the final fittest_means.txt data file. 

Fittest_Mean.txt inlcudes columns representing the following

*Subject* -
   Description: Column data representing the 30 volunteers that participated in the study
   Data type: Numeric
   Values: Values 1 through 30
   
*Activity.Label* - 
   Description - Column of data indicating the type of activity performed by the subject. 
   Data type - Character
   Values - WALKING, WALKING UPSTAIRS, WALKING DOWNSTAIRS, SITTING, STANDING, LAYING


*Summary Data description*

Following 33 columns are averages (summary) of Mean values, by Subject and Activity.Label 

(Activity performed by Subject) extracted from the original x_test and x_train datasets. 


# Time.BodyAcc.Mean.XYZ
  
Average by Subject and Activity.Label of Mean 3-axial raw Time domain signal from the acceloerometer, separated into boy and gravity accelearation, after removing Noise. 

     Time.BodyAcc.Mean.X

     Time.BodyAcc.Mean.Y

     Time.BodyAcc.Mean.Z

	Time.GravityAcc.Mean.X

	Time.GravityAcc.Mean.Y
	
	Time.GravityAcc.Mean.Z
	

# Average  by Subject and Activity.Label of Mean Body Linear acceleration and angular velocity on 3 axis, by Subject and Activity.Label 
	Time.BodyAccJerk.Mean.X

	Time.BodyAccJerk.Mean.Y
	
	Time.BodyAccJerk.Mean.Z
	
	Time.BodyGyroJerk.Mean.X

	Time.BodyGyroJerk.Mean.Y

	Time.BodyGyroJerk.Mean.Z

# Average  by Subject and Activity.Label of Mean of Magnitude of 3 D signals, by Subject and Activity_label.

	Time.BodyAccMag-mean
	
	Time.GravityAccMag-mean

	Time.BodyAccJerkMag-mean

	Time.BodyGyroMag-mean

	Time.BodyGyroJerkMag-mean

# Average  by Subject and Activity.Label of Mean of Fast Fourier Transform (FFR) applied to signals producing


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


Following 33 columns are averages (summary) of Standard Deviation values extracted from the original x_test and x_train datasets. 

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
