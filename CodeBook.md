CODE BOOK: GETTING AND CLEANING DATA COURSE PROJECT FINAL DATASET
Nov 2019

The original data and information about that data can be found here:
http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

The course project dataset "projectdata.txt" was created by (1) merging the original training and test datasets; (2) extracting only the mean value and standard deviation variables estimated from the signals described in the "features_info.txt" file included with the original data (note the additional vectors described there were not included); (3) replacing the numbers representing the activities with descriptive names for the activities; and (4) adding descriptive labels to the dataset (see explanations of these below).

More information about the dataset and the process used to create it can be found in the project README file.



Dataset Names and Descriptions

 [1] activity
 
        Name of the activity the subject was performing in the original experiment.
        
        Value is one of: "WALKING", "WALKING_UPSTAIRS", "WALKING_DOWNSTAIRS", "SITTING", "STANDING", "LAYING"
        
 [2] subject
 
        Subject ID from the original experiment
        
        Value is an integer ranging from 1 to 30

 [3] through [68] (see below)
 
        Each of these is the calculated average of all values of the corresponding original variable (see below) for the given activity and subject
        
        Units are the same as described in the original dataset (see the file "features_info.txt" included with the original data). 
        
                Briefly, in that dataset:
                        Features are normalized and bounded within [-1,1].
                        The units used for the accelerations (total and body) are 'g's (gravity of earth -> 9.80665 m/seg2).
                        The gyroscope units are rad/seg.
 
 Descriptive Name               Corresponding Original Variable
 [3] tbodyaccmeanx              [1] tBodyAcc-mean()-X
 [4] tbodyaccmeany              [2] tBodyAcc-mean()-Y
 [5] tbodyaccmeanz              [3] tBodyAcc-mean()-Z
 [6] tbodyaccstdx               [4] tBodyAcc-std()-X        
 [7] tbodyaccstdy               [5] tBodyAcc-std()-Y            
 [8] tbodyaccstdz               [6] tBodyAcc-std()-Z          
 [9] tgravityaccmeanx          [41] tGravityAcc-mean()-X        
[10] tgravityaccmeany          [42] tGravityAcc-mean()-Y       
[11] tgravityaccmeanz          [43] tGravityAcc-mean()-Z        
[12] tgravityaccstdx           [44] tGravityAcc-std()-X        
[13] tgravityaccstdy           [45] tGravityAcc-std()-Y         
[14] tgravityaccstdz           [46] tGravityAcc-std()-Z        
[15] tbodyaccjerkmeanx         [81] tBodyAccJerk-mean()-X       
[16] tbodyaccjerkmeany         [82] tBodyAccJerk-mean()-Y      
[17] tbodyaccjerkmeanz         [83] tBodyAccJerk-mean()-Z       
[18] tbodyaccjerkstdx          [84] tBodyAccJerk-std()-X       
[19] tbodyaccjerkstdy          [85] tBodyAccJerk-std()-Y        
[20] tbodyaccjerkstdz          [86] tBodyAccJerk-std()-Z       
[21] tbodygyromeanx           [121] tBodyGyro-mean()-X          
[22] tbodygyromeany           [122] tBodyGyro-mean()-Y         
[23] tbodygyromeanz           [123] tBodyGyro-mean()-Z          
[24] tbodygyrostdx            [124] tBodyGyro-std()-X          
[25] tbodygyrostdy            [125] tBodyGyro-std()-Y           
[26] tbodygyrostdz            [126] tBodyGyro-std()-Z          
[27] tbodygyrojerkmeanx       [161] tBodyGyroJerk-mean()-X              
[28] tbodygyrojerkmeany       [162] tBodyGyroJerk-mean()-Y     
[29] tbodygyrojerkmeanz       [163] tBodyGyroJerk-mean()-Z      
[30] tbodygyrojerkstdx        [164] tBodyGyroJerk-std()-X      
[31] tbodygyrojerkstdy        [165] tBodyGyroJerk-std()-Y       
[32] tbodygyrojerkstdz        [166] tBodyGyroJerk-std()-Z      
[33] tbodyaccmagmean          [201] tBodyAccMag-mean()          
[34] tbodyaccmagstd           [202] tBodyAccMag-std()          
[35] tgravityaccmagmean       [214] tGravityAccMag-mean()       
[36] tgravityaccmagstd        [215] tGravityAccMag-std()       
[37] tbodyaccjerkmagmean      [227] tBodyAccJerkMag-mean()      
[38] tbodyaccjerkmagstd       [228] tBodyAccJerkMag-std()      
[39] tbodygyromagmean         [240] tBodyGyroMag-mean()         
[40] tbodygyromagstd          [241] tBodyGyroMag-std()         
[41] tbodygyrojerkmagmean     [253] tBodyGyroJerkMag-mean()     
[42] tbodygyrojerkmagstd      [254] tBodyGyroJerkMag-std()     
[43] fbodyaccmeanx            [266] fBodyAcc-mean()-X           
[44] fbodyaccmeany            [267] fBodyAcc-mean()-Y          
[45] fbodyaccmeanz            [268] fBodyAcc-mean()-Z           
[46] fbodyaccstdx             [269] fBodyAcc-std()-X           
[47] fbodyaccstdy             [270] fBodyAcc-std()-Y            
[48] fbodyaccstdz             [271] fBodyAcc-std()-Z           
[49] fbodyaccjerkmeanx        [345] fBodyAccJerk-mean()-X       
[50] fbodyaccjerkmeany        [346] fBodyAccJerk-mean()-Y      
[51] fbodyaccjerkmeanz        [347] fBodyAccJerk-mean()-Z       
[52] fbodyaccjerkstdx         [348] fBodyAccJerk-std()-X       
[53] fbodyaccjerkstdy         [349] fBodyAccJerk-std()-Y        
[54] fbodyaccjerkstdz         [350] fBodyAccJerk-std()-Z       
[55] fbodygyromeanx           [424] fBodyGyro-mean()-X          
[56] fbodygyromeany           [425] fBodyGyro-mean()-Y         
[57] fbodygyromeanz           [426] fBodyGyro-mean()-Z          
[58] fbodygyrostdx            [427] fBodyGyro-std()-X          
[59] fbodygyrostdy            [428] fBodyGyro-std()-Y           
[60] fbodygyrostdz            [429] fBodyGyro-std()-Z          
[61] fbodyaccmagmean          [503] fBodyAccMag-mean()          
[62] fbodyaccmagstd           [504] fBodyAccMag-std()          
[63] fbodybodyaccjerkmagmean  [516] fBodyBodyAccJerkMag-mean()  
[64] fbodybodyaccjerkmagstd   [517] fBodyBodyAccJerkMag-std()  
[65] fbodybodygyromagmean     [529] fBodyBodyGyroMag-mean()     
[66] fbodybodygyromagstd      [530] fBodyBodyGyroMag-std()     
[67] fbodybodygyrojerkmagmean [542] fBodyBodyGyroJerkMag-mean() 
[68] fbodybodygyrojerkmagstd  [543] fBodyBodyGyroJerkMag-std()
