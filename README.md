This file explains the run_analysis.R script used to generate the desired tidy data set

To run the script, a user must have or create a specific directory structure at this location:

~/courses/gettingData

Here, the UCI HAR Dataset will be unzipped and installed.

The run_analysis.R script will also be located and run from here.

R script algorithm
--------------------
1) set the working directory

2) read in test data file (has no header info)

3) read in activity list file

4) read in subject file (ID the test subjects)

5) read in activity labels file (ID the user activity)

6) make a list of the 2nd column of actfile; there is only 6 values

7) read in header data file (will be column names for data set)

8) make a list of the 2nd column of hdrfile

9) change column names that ID the actual data measurement name

10) add column of user activity as 1st column of new data set using cbind()

11) make V1 column a factor and change V1 column name to 'activity'

12) assign activity labels to each of the 6 possible factors

13) add another column of subject as 1st column of new data set

14) change V1 column name to 'subject'

15) extract only the mean() and std() data columns from this data (keeping the 'subject' and 'activity' columns too)

16) repeat steps 2-15 for 'train' data (changing the files in steps 2-4)

17) combine the trimmed 'test' and 'train' datasets into 1 big data set (10299 rows)

18) subset the data to extract only the mean() and std() data columns


< names(z1)

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

19) create another independent data set that contains the mean of each feature for each subject performing each activity

20) write out the resultant data table to a file (projectTidyData.txt)
