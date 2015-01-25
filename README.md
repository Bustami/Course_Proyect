## Read Me

After you download and unzip the database, to use the "run_analysis.R" script you need follow this steps:
- load the packages "dplyr" and "reshape2".
- define your work directory like "./UCI HAR Dataset"

## Explanation
Then, the "run_analysis.R" script works  this way:

# Read data
Read the data and load it in R from useful .txt files (train, test, features, activity)

# Merge Data
Merge the train, test, features and activity data to obtain one dataframe which contains all the data

# Extract Mean & Std from measurements
Select only the data of the variables with Mean and Std values in their names

# Name the activities
Assign the respective Activity in order to Label Index

# Mean of each variable for each activity and each subject
First melt the data in order the useful variables (Activity and Subject) to calculate the mean of each other variables

## Output
Export the data to .txt file
