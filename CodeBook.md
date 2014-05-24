CodeBook.md

## Introduction

Human Activity Recognition Using Smartphones Dataset

This data preparation analysis will focus on the measurements of mean and standard deviation, therefore non-relevant variables have been removed.  For complete information on the experiments, variables, and features follow the link provided below.

One of the most exciting areas in all of data science right now is wearable computing - see for example this article.  Companies like Fitbit, Nike, and Jawbone Up are racing to develop the most advanced algorithms to attract new users.  The data linked to from the course website represent data collected from the accelerometers  from the Samsung Galaxy S smartphone.  A full description is available at the site where the data was obtained: 

http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones 

Here are the data for the project: 

https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 

## Study Design

Source:
Jorge L. Reyes-Ortiz, Davide Anguita, Alessandro Ghio, Luca Oneto. 
Smartlab - Non Linear Complex Systems Laboratory 
DITEN - Universit√  degli Studi di Genova, Genoa I-16145, Italy. 
activityrecognition '@' smartlab.ws 
www.smartlab.ws 

Data Set Information:

The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist.  Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz.  The experiments have been video-recorded to label the data manually.  The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window).  The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain. 

Attribute Information:

For each record in the dataset it is provided: 

* Triaxial acceleration from the accelerometer (total acceleration) and the estimated body acceleration. 
* Triaxial Angular velocity from the gyroscope. 
* A 561-feature vector with time and frequency domain variables. 
* Its activity label. 
* An identifier of the subject who carried out the experiment.

The dataset includes the following files:

* 'README.txt'
* 'features_info.txt': Shows information about the variables used on the feature vector.
* 'features.txt': List of all features.
* 'activity_labels.txt': Links the class labels with their activity name.
* 'train/X_train.txt': Training set.
* 'train/y_train.txt': Training labels.
* 'test/X_test.txt': Test set.
* 'test/y_test.txt': Test labels.

The following files are available for the train and test data.  Their descriptions are equivalent. 

* 'train/subject_train.txt': Each row identifies the subject who performed the activity for each window sample. Its range is from 1 to 30. 
* 'train/Inertial Signals/total_acc_x_train.txt': The acceleration signal from the smartphone accelerometer X axis in standard gravity units 'g'. Every row shows a 128 element vector. The same description applies for the 'total_acc_x_train.txt' and 'total_acc_z_train.txt' files for the Y and Z axis. 
* 'train/Inertial Signals/body_acc_x_train.txt': The body acceleration signal obtained by subtracting the gravity from the total acceleration. 
* 'train/Inertial Signals/body_gyro_x_train.txt': The angular velocity vector measured by the gyroscope for each window sample. The units are radians/second. 

Notes: 

* Features are normalized and bounded within [-1,1].
* Each feature vector is a row on the text file.

##Code Book

Feature Selection: 

The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ.  These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz.  Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise.  Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ).  Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 

These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

* tBodyAcc-XYZ
* tGravityAcc-XYZ
* tBodyAccJerk-XYZ
* tBodyGyro-XYZ
* tBodyGyroJerk-XYZ
* tBodyAccMag
* tGravityAccMag
* tBodyAccJerkMag
* tBodyGyroMag
* tBodyGyroJerkMag
* fBodyAcc-XYZ
* fBodyAccJerk-XYZ
* fBodyGyro-XYZ
* fBodyAccMag
* fBodyAccJerkMag
* fBodyGyroMag
* fBodyGyroJerkMag

The set of variables that were estimated from these signals included here are: 

* mean(): Mean value
* std(): Standard deviation

The selected tidy variable names included here for mean and standard deviation are:

* tbodyaccmeanx
* tbodyaccmeany
* tbodyaccmeanz
* tbodyaccstdx
* tbodyaccstdy
* tbodyaccstdz
* tgravityaccmeanx
* tgravityaccmeany
* tgravityaccmeanz
* tgravityaccstdx
* tgravityaccstdy
* tgravityaccstdz
* tbodyaccjerkmeanx
* tbodyaccjerkmeany
* tbodyaccjerkmeanz
* tbodyaccjerkstdx
* tbodyaccjerkstdy
* tbodyaccjerkstdz
* tbodygyromeanx
* tbodygyromeany
* tbodygyromeanz
* tbodygyrostdx
* tbodygyrostdy
* tbodygyrostdz
* tbodygyrojerkmeanx
* tbodygyrojerkmeany
* tbodygyrojerkmeanz
* tbodygyrojerkstdx
* tbodygyrojerkstdy
* tbodygyrojerkstdz
* tbodyaccmagmean
* tbodyaccmagstd
* tgravityaccmagmean
* tgravityaccmagstd
* tbodyaccjerkmagmean
* tbodyaccjerkmagstd
* tbodygyromagmean
* tbodygyromagstd
* tbodygyrojerkmagmean
* tbodygyrojerkmagstd
* fbodyaccmeanx
* fbodyaccmeany
* fbodyaccmeanz
* fbodyaccstdx
* fbodyaccstdy
* fbodyaccstdz
* fbodyaccjerkmeanx
* fbodyaccjerkmeany
* fbodyaccjerkmeanz
* fbodyaccjerkstdx
* fbodyaccjerkstdy
* fbodyaccjerkstdz
* fbodygyromeanx
* fbodygyromeany
* fbodygyromeanz
* fbodygyrostdx
* fbodygyrostdy
* fbodygyrostdz
* fbodyaccmagmean
* fbodyaccmagstd
* fbodybodyaccjerkmagmean
* fbodybodyaccjerkmagstd
* fbodybodygyromagmean
* fbodybodygyromagstd
* fbodybodygyrojerkmagmean
* fbodybodygyrojerkmagstd 

## Transformations

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


