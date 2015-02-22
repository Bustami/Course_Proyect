Human Activity Recognition Using Smartphones Data Set

The data was collected from measurements of 30 subjects performing activities of daily living (ADL) while carrying waist-mounted the accelerometers from the Samsung Galaxy S 

smartphone, with embedded inertial sensors.
It's in a weblink (https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip) which containing a zipped folder. 

But in this script it was used only the following files from the "UCI HAR Dataset" folder:
*"features.txt" - Contains the names of all variables recorded (only used the ones related to the "mean" and the "standard deviation")
*"activity_labels.txt" - Contains the names of the six (6) differents activities which the volunteers performed for the measurements
*"test/subject_test.txt" - Sample set from 30 volunteers (30% of the volunteer data in "test" folder; 70% of the volunteer data in the "train" folder)
*"test/X_test.txt" - Sensor readings for each of the volunteers (test data)
*"test/Y_test.txt" - Activity corresponding to the subjects in test data
*"train/subject_train.txt" - Sample set from 30 volunteers
*"train/X_train.txt" - Sensor readings for each of the volunteers (train data)
*"train/Y_train.txt" - Activity corresponding to the subjects in train data

The following steps were carried out to obtain the "tidy" dataset:
1) Merging the training and the test sets to create one data set.
2) Extracting only the measurements on the mean and standard deviation for each measurement. 
3) Using descriptive activity names to name the activities in the data set
4) Appropriately labeling the data set with descriptive variable names. 
5) From the data set in step 4, creating a second, independent tidy data set with the average of each variable for each activity and each subject.

The following are the variables in the final output file "dataFinal.txt" with his respective column name, after the step N°5:
 [1] "Subject" -This is the ID of the person who volunteered to provide the readings (1 to 30).
 [2] "Activity" - This is the activity performed for each observation (1 WALKING; 2 WALKING_UPSTAIRS; 3 WALKING_DOWNSTAIRS; 4 SITTING; 5 STANDING; 6 LAYING).                  

 [3] "tBodyAccMeanX"
 [4] "tBodyAccMeanY"                    
 [5] "tBodyAccMeanZ"
 [6] "tGravityAccMeanX"                 
 [7] "tGravityAccMeanY"                  
 [8] "tGravityAccMeanZ"                 
 [9] "tBodyAccJerkMeanX"              
[10] "tBodyAccJerkMeanY"                
[11] "tBodyAccJerkMeanZ"               
[12] "tBodyGyroMeanX"                   
[13] "tBodyGyroMeanY"                
[14] "tBodyGyroMeanZ"                   
[15] "tBodyGyroJerkMeanX"           
[16] "tBodyGyroJerkMeanY"               
[17] "tBodyGyroJerkMeanZ"           
[18] "tBodyAccMagMean"                  
[19] "tGravityAccMagMean"           
[20] "tBodyAccJerkMagMean"              
[21] "tBodyGyroMagMean"           
[22] "tBodyGyroJerkMagMean"             
[23] "fBodyAccMeanX"               
[24] "fBodyAccMeanY"                    
[25] "fBodyAccMeanZ"                
[26] "fBodyAccMeanFreqX"                
[27] "fBodyAccMeanFreqY"          
[28] "fBodyAccMeanFreqZ"                
[29] "fBodyAccJerkMeanX"              
[30] "fBodyAccJerkMeanY"                
[31] "fBodyAccJerkMeanZ"               
[32] "fBodyAccJerkMeanFreqX"            
[33] "fBodyAccJerkMeanFreqY"          
[34] "fBodyAccJerkMeanFreqZ"            
[35] "fBodyGyroMeanX"                  
[36] "fBodyGyroMeanY"                   
[37] "fBodyGyroMeanZ"                  
[38] "fBodyGyroMeanFreqX"               
[39] "fBodyGyroMeanFreqY"            
[40] "fBodyGyroMeanFreqZ"               
[41] "fBodyAccMagMean"                 
[42] "fBodyAccMagMeanFreq"              
[43] "fBodyAccJerkMagMean"            
[44] "fBodyAccJerkMagMeanFreq"          
[45] "fBodyGyroMagMean"               
[46] "fBodyGyroMagMeanFreq"             
[47] "fBodyGyroJerkMagMean"            
[48] "fBodyGyroJerkMagMeanFreq"         
[49] "angletBodyAccMeangravity"        
[50] "angletBodyAccJerkMeangravityMean" 
[51] "angletBodyGyroMeangravityMean"    
[52] "angletBodyGyroJerkMeangravityMean"
[53] "angleXgravityMean"               
[54] "angleYgravityMean"                
[55] "angleZgravityMean"               
[56] "tBodyAccStdX"                     
[57] "tBodyAccStdY"                   
[58] "tBodyAccStdZ"                     
[59] "tGravityAccStdX"                 
[60] "tGravityAccStdY"                  
[61] "tGravityAccStdZ"                
[62] "tBodyAccJerkStdX"                 
[63] "tBodyAccJerkStdY"               
[64] "tBodyAccJerkStdZ"                 
[65] "tBodyGyroStdX"                    
[66] "tBodyGyroStdY"                    
[67] "tBodyGyroStdZ"                   
[68] "tBodyGyroJerkStdX"                
[69] "tBodyGyroJerkStdY"                
[70] "tBodyGyroJerkStdZ"                
[71] "tBodyAccMagStd"                  
[72] "tGravityAccMagStd"                
[73] "tBodyAccJerkMagStd"              
[74] "tBodyGyroMagStd"                  
[75] "tBodyGyroJerkMagStd"            
[76] "fBodyAccStdX"                     
[77] "fBodyAccStdY"                  
[78] "fBodyAccStdZ"                     
[79] "fBodyAccJerkStdX"                
[80] "fBodyAccJerkStdY"                 
[81] "fBodyAccJerkStdZ"               
[82] "fBodyGyroStdX"                    
[83] "fBodyGyroStdY"                 
[84] "fBodyGyroStdZ"                    
[85] "fBodyAccMagStd"                 
[86] "fBodyAccJerkMagStd"               
[87] "fBodyGyroMagStd"                
[88] "fBodyGyroJerkMagStd"

Consider that 1st letter indicates time(t) or frequency(f)
Last letter having 'X', 'Y' or 'Z' indicates one of the axis from the tri-axial observation.
Any name which includes 'Acc' indicates a reading related to Acceleration (from the Accelerometer).
Any name which includes 'Gyroscope' indicates a reading from the Gyroscope.
All readings are either the mean or the standard deviation(std) values.
