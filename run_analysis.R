# This script retrieves data from a zip file, then merges train and test data.
# It de-mystifies the labels, tidies the data, then saves it to tidyResults.csv

run_analysis <- function() {
    # Load necessary packages
    # Note: this function assumes these packages are already installed
    library(data.table)
    library(dplyr)
    
    # Set working directory
    # This will create the directory "~/R/GettingCleaningAssignmentW4", if it doesn't 
    # already exist
    if (!dir.exists("~/R/GettingCleaningAssignmentW4")) {
        dir.create("~/R/GettingCleaningAssignmentW4")
    }
    setwd("~/R/GettingCleaningAssignmentW4")
    
    # Retrieve data
    download.file("https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip", file.path(getwd(), "dataFiles.zip"))
    unzip(zipfile = "dataFiles.zip")
    
    # Load all data into R
    featureLabels <- read.table("UCI HAR Dataset/features.txt")
    activityLabels <- read.table("UCI HAR Dataset/activity_labels.txt", header = FALSE)
    subjectTrain <- read.table("UCI HAR Dataset/train/subject_train.txt", header = FALSE)
    subjectTest <- read.table("UCI HAR Dataset/test/subject_test.txt", header = FALSE)
    yTrain <- read.table("UCI HAR Dataset/train/y_train.txt", header = FALSE)
    yTest <- read.table("UCI HAR Dataset/test/y_test.txt", header = FALSE)
    xTrain <- read.table("UCI HAR Dataset/train/X_train.txt", header = FALSE)
    xTest <- read.table("UCI HAR Dataset/test/X_test.txt", header = FALSE)
    
    # Merge train and test data and add column labels
    subjectData <- rbind(subjectTrain, subjectTest)
    colnames(subjectData) <- "Subject"
    activityData <- rbind(yTrain, yTest)
    colnames(activityData) <- "Activity"
    featureData <- rbind(xTrain, xTest)
    colnames(featureData) <- featureLabels[[2]]
    
    # Extract mean and std columns, then merge with activity and subject data
    meanStdData <- featureData[,c(grep(".*Mean.*|.*Std.*", names(featureData), ignore.case=TRUE))]
    meanStdData <- cbind(meanStdData,activityData,subjectData)
    
    # Set activity names
    for (i in 1:6){
        meanStdData$Activity[meanStdData$Activity == i] <- as.character(activityLabels[i,2])
    }

    # Remove acryonyms to make names less cryptic and more easily understandable
    names(meanStdData)<-gsub("Acc", "Accelerometer", names(meanStdData))
    names(meanStdData)<-gsub("Gyro", "Gyroscope", names(meanStdData))
    names(meanStdData)<-gsub("Mag", "Magnitude", names(meanStdData))
    names(meanStdData)<-gsub("^t", "Time", names(meanStdData))
    names(meanStdData)<-gsub("^f", "Frequency", names(meanStdData))
    names(meanStdData)<-gsub("angle", "Angle", names(meanStdData))
    names(meanStdData)<-gsub("gravity", "Gravity", names(meanStdData))
    names(meanStdData)<-gsub("-mean\\(\\)", "Mean", names(meanStdData), ignore.case = TRUE)
    names(meanStdData)<-gsub("-std\\(\\)", "STD", names(meanStdData), ignore.case = TRUE)
    names(meanStdData)<-gsub("freq\\(\\)", "Frequency", names(meanStdData), ignore.case = TRUE)
    names(meanStdData)<-gsub("tBody", "TimeBody", names(meanStdData))
    names(meanStdData)<-gsub("meanFrequency", "MeanFrequency", names(meanStdData))
    names(meanStdData)<-gsub("BodyBody", "Body", names(meanStdData))
    
    
    # Tidy and aggregate the data
    tidyResults <- summarize_each(group_by(meanStdData,Subject,Activity),funs(mean))
    write.table(tidyResults, file = "tidyResults.csv", row.names = FALSE,sep = ",")
}