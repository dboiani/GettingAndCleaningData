# Note: many of these processes could be combined or reordered, but 
# are executed in this order to adhere to the goals as ordered in
# the project instructions.

# Note2: download:
# https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 

# Note3: unzip/extract to working directory
# getdata-projectfiles-UCI HAR Dataset.zip

# Note: the unzip/extract should create the proper folder structure, but
# if not this script depends on the following folder structure
# working directory (for example: "I:/DATASCIENCE/UCI HAR Dataset man")
# files: run_analysis.R (this file), activity_labels.txt, features.txt, features_info.txt
# folders: test, train
# files in folder test: subject_test.txt, X_test.txt, y_test.txt
# files in folder train: subject_train.txt, X_train.txt, y_train.txt
# the Inertial Signals folder found in the test and train folders is not used

library(reshape2)
# install.packages("reshape2",dependencies=TRUE)

# 1) Merges the training and the test sets to create one data set.
    # read the test data
    testsubject <- read.table("test/subject_test.txt")
    testX <- read.table("test/X_test.txt")
    testy <- read.table("test/y_test.txt")

    # read the train data
    trainsubject <- read.table("train/subject_train.txt")
    trainX <- read.table("train/X_train.txt")
    trainy <- read.table("train/y_train.txt")

    # merge/combine the test and train data
    subject <- rbind(testsubject, trainsubject)
    measuresX <- rbind(testX, trainX)
    activityy <- rbind(testy, trainy)

    # hold off cbind until the next step is almost complete
    # cbind(subject,measuresX,activityy)

# 2) Extracts only the measurements on the mean and standard deviation for each measurement
    # read features file
    features <- read.table("features.txt")
    # get index
    meanandstdcols <- grep("mean\\(\\)|std\\(\\)", features[,"V2"])
    # extract mean and std features
    featuresmeanandstd <- features[meanandstdcols,2]
    # extract mean and std measurements
    measuresXmeanandstdcols <- measuresX[,meanandstdcols]

    # combine the objects by columns
    combinedata <- cbind(subject,activityy,measuresXmeanandstdcols)

# 3) Uses descriptive activity names to name the activities in the data set
    # read the labels file
    activitylabels <- read.table("activity_labels.txt")

    # replace Activity codes with the activity labels   
    combinedata[,2] = activitylabels[combinedata[,2], "V2"]

# 4) Appropriately labels the data set with descriptive activity names.     
    # remove observed nonstandard characters as suggested in the forums
    featuresmeanandstd <- gsub("\\(|\\)|-","",featuresmeanandstd)
    # change to lower case as suggested in the forums
    featuresmeanandstd <- tolower(featuresmeanandstd)
    
    # label the combinedata sets columns with descriptive names
    names(combinedata) <- c("subject","activity",as.character(featuresmeanandstd))

    # write out the first tidy dataset
    write.table(combinedata, "tidydataset1.txt")
    
# 5) Creates a second, independent tidy data set with the average of each variable for each activity and each subject. 
    # process from Reshaping data lecture slides 3 through 5
    meltcombine <- melt(combinedata, id = c("subject","activity"))
    dcastcombine <- dcast(meltcombine, subject + activity ~ variable, mean)

    # write out the second tidy dataset
    write.table(dcastcombine, "tidydataset2.txt")
