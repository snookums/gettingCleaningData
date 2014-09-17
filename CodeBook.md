Tidy Data Project
Darren Snook
09/16/14

The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain. See 'features_info.txt' for more details. 

The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 

These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

tBodyAcc-XYZ
tGravityAcc-XYZ
tBodyAccJerk-XYZ
tBodyGyro-XYZ
tBodyGyroJerk-XYZ
tBodyAccMag
tGravityAccMag
tBodyAccJerkMag
tBodyGyroMag
tBodyGyroJerkMag
fBodyAcc-XYZ
fBodyAccJerk-XYZ
fBodyGyro-XYZ
fBodyAccMag
fBodyAccJerkMag
fBodyGyroMag
fBodyGyroJerkMag



This particular project data set is a manipulated subset of the UCI HAR data set, as described above.
The individual test and train data sets have been combined into a single data set and manipulated to meet the requirements of the project.

The complete list of variables of each feature vector is as follows:

[1] "subject"                     "activity"                    "tBodyAcc-mean()-X"          
 [4] "tBodyAcc-mean()-Y"           "tBodyAcc-mean()-Z"           "tBodyAcc-std()-X"           
 [7] "tBodyAcc-std()-Y"            "tBodyAcc-std()-Z"            "tGravityAcc-mean()-X"       
[10] "tGravityAcc-mean()-Y"        "tGravityAcc-mean()-Z"        "tGravityAcc-std()-X"        
[13] "tGravityAcc-std()-Y"         "tGravityAcc-std()-Z"         "tBodyAccJerk-mean()-X"      
[16] "tBodyAccJerk-mean()-Y"       "tBodyAccJerk-mean()-Z"       "tBodyAccJerk-std()-X"       
[19] "tBodyAccJerk-std()-Y"        "tBodyAccJerk-std()-Z"        "tBodyGyro-mean()-X"         
[22] "tBodyGyro-mean()-Y"          "tBodyGyro-mean()-Z"          "tBodyGyro-std()-X"          
[25] "tBodyGyro-std()-Y"           "tBodyGyro-std()-Z"           "tBodyGyroJerk-mean()-X"     
[28] "tBodyGyroJerk-mean()-Y"      "tBodyGyroJerk-mean()-Z"      "tBodyGyroJerk-std()-X"      
[31] "tBodyGyroJerk-std()-Y"       "tBodyGyroJerk-std()-Z"       "tBodyAccMag-mean()"         
[34] "tBodyAccMag-std()"           "tGravityAccMag-mean()"       "tGravityAccMag-std()"       
[37] "tBodyAccJerkMag-mean()"      "tBodyAccJerkMag-std()"       "tBodyGyroMag-mean()"        
[40] "tBodyGyroMag-std()"          "tBodyGyroJerkMag-mean()"     "tBodyGyroJerkMag-std()"     
[43] "fBodyAcc-mean()-X"           "fBodyAcc-mean()-Y"           "fBodyAcc-mean()-Z"          
[46] "fBodyAcc-std()-X"            "fBodyAcc-std()-Y"            "fBodyAcc-std()-Z"           
[49] "fBodyAccJerk-mean()-X"       "fBodyAccJerk-mean()-Y"       "fBodyAccJerk-mean()-Z"      
[52] "fBodyAccJerk-std()-X"        "fBodyAccJerk-std()-Y"        "fBodyAccJerk-std()-Z"       
[55] "fBodyGyro-mean()-X"          "fBodyGyro-mean()-Y"          "fBodyGyro-mean()-Z"         
[58] "fBodyGyro-std()-X"           "fBodyGyro-std()-Y"           "fBodyGyro-std()-Z"          
[61] "fBodyAccMag-mean()"          "fBodyAccMag-std()"           "fBodyBodyAccJerkMag-mean()" 
[64] "fBodyBodyAccJerkMag-std()"   "fBodyBodyGyroMag-mean()"     "fBodyBodyGyroMag-std()"     
[67] "fBodyBodyGyroJerkMag-mean()" "fBodyBodyGyroJerkMag-std()"

The first 2 columns (subject, activity) identify which test subject was measured and the activity they were performing at that time.

The remaining 66 columns are comprised of only the mean for each of the features (66 total) for a given subject performing each activity.
Yes, this resultant data set can be interpretted as a mean of both mean and standard deviations of the above listed features extracted from the raw data. It is left to the user of this data to determine its usefulness.

This results in a single row entry for each activity (6 total) for each subject (30 total), producing a new modified data set with 180 rows by 68 columns.

an example of the desired output:

   subject           activity tBodyAcc.mean...X tBodyAcc.mean...Y tBodyAcc.mean...Z
1        1            WALKING         0.2773308      -0.017383819        -0.1111481
2        1   WALKING_UPSTAIRS         0.2554617      -0.023953149        -0.0973020
3        1 WALKING_DOWNSTAIRS         0.2891883      -0.009918505        -0.1075662
4        1            SITTING         0.2612376      -0.001308288        -0.1045442
5        1           STANDING         0.2789176      -0.016137590        -0.1106018
6        1             LAYING         0.2215982      -0.040513953        -0.1132036
7        2            WALKING         0.2764266      -0.018594920        -0.1055004
8        2   WALKING_UPSTAIRS         0.2471648      -0.021412113        -0.1525139
9        2 WALKING_DOWNSTAIRS         0.2776153      -0.022661416        -0.1168129
10       2            SITTING         0.2770874      -0.015687994        -0.1092183

where the remaining feature variables are not shown.

