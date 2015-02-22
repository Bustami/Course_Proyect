## Read Me

After you download and unzip the database, before to use the "run_analysis.R" script you need follow this steps:
- load the packages "dplyr" and "reshape2" (use "install.packages()" & "library()" functions)
- define your work directory like "./UCI HAR Dataset"

Then, the "run_analysis.R" script works  this way:

# Read data
Read the data and load it in R from useful .txt files (train, test, features, activity)

# Merge Data
Merge the train, test, features and activity data to obtain one dataframe which contains all the data

# Extract Mean & Std from measurements
Select only the data of the variables with "Mean" and "Std" words in their names

# Mean of each variable for each activity and each subject
First group_by the data in order the useful variables (Subject and Activity) to then calculate the mean of each other variables

# Name the activities
Assign the respective Activity in order to Label Index
Change same parts of column names replacing for others ("." to ""; "BodyBody" to "Body"; etc)

## Output
Export the tidy data to .txt file
