Tidy Data Project
Darren Snook
09/16/14

This particular project data set is a manipulated subset of the UCI HAR data set, as described above. The user is referred to the README file found in the UCI HAR data set files for further details.

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

