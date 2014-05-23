GettingAndCleaningData - read.me
======================

Coursera/Johns Hopkins Getting and Cleaning Data course project

The processs described uses a single R script (run_analysis.R) and requires R to be installed.  Many of the processes used here could be combined or reordered, but are executed in this order to adhere to the goals as ordered in the project instructions.

Download:
https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 

Unzip/extract 'getdata-projectfiles-UCI HAR Dataset.zip' to your working directory 

The unzip/extract should create the proper folder structure, but if not this script depends on the following folder structure:
* working directory (for example: "I:/DATASCIENCE/UCI HAR Dataset man")
* files: run_analysis.R (this file), activity_labels.txt, features.txt, features_info.txt
* folders: test, train
* files in folder test: subject_test.txt, X_test.txt, y_test.txt
* files in folder train: subject_train.txt, X_train.txt, y_train.txt
* The Inertial Signals folder found in the test and train folders is not used

In R or R-studio ensure that the 'reshape2' package is installed

Roughly following the order of the project instructions the run_analysis.R script does the following:

1) Merge the training and the test sets to create one data set.
   * read the test data files
   * read the train data files
   * merge/combine the rows in the test and train data files
   * hold off mergeing/combining the columns until the next step is almost complete

2) Extract only the measurements of mean and standard deviation 
   * read the features file
   * create an index of the mean and standard deviation features 
   * extract the mean and std features from the features file
   * extract the mean and std measurements from the X files
   * combine the columns of the files (subject,y,X)

3) Uses descriptive activity names to name the activities in the data set
   * read the labels file
   * replace the Activity codes with the activity labels

4) Appropriately label the data set with descriptive activity names.     
   * remove the observed nonstandard characters as suggested in the forums
   * change to lower case as suggested in the forums
   * label the combinedata sets columns with descriptive names
   * write out the first tidy dataset (tidydataset1.txt)
    
5) Creates a second, independent tidy data set with the average of each variable for each activity and each subject. 
   * use the functions/process described in the 'Reshaping data' lecture slides 3 through 5
   * melt on subject activity
   * dcast on subject activity calculating the mean
   * write out the second tidy dataset (tidydataset2.txt)
