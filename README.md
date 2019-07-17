## Getting and Cleaning Data - Week 4
### Getting and Cleaning Data Course Project

The run_analysis.R script contains one function, run_analysis(), which performs the following actions:

1) Load required packages needed for this script
- data.table
- dplyr

2) Download and unzip the dataset
- Download https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip
- Unzip it to directory "~/R/GettingCleaningAssignmentW4"

3) Load all data from .txt files into R
- UCI HAR Dataset/features.txt
- UCI HAR Dataset/activity_labels.txt
- UCI HAR Dataset/train/subject_train.txt
- UCI HAR Dataset/test/subject_test.txt
- UCI HAR Dataset/train/y_train.txt
- UCI HAR Dataset/test/y_test.txt
- UCI HAR Dataset/train/X_train.txt
- UCI HAR Dataset/test/X_test.txt

4) Merge train and test data and provide column labels
- Subject data (Subject_*.txt files)
- Activity data (y_*.txt files)
- Feature data (X_*.txt files)

5) Select only feature columns with "Mean" or "STD" in the column header, and then merge with Activity and Feature data frames

6) Provide more decriptive, meaningful column names
- Replace all instances of "Acc" with "Accelerometer"
- Replace all instances of "Gyro" with "Gyroscope"
- Replace all instances of "Mag" with "Magnitude"
- Change all column names beginning with "t" to "Time"
- Change all column names beginning with "f" to "Frequency"
- Replace all instances of "angle" with "Angle"
- Replace all instances of "gravity" with "Gravity"
- Change all column names ending with "mean()" (ignoring case) to "Mean"
- Change all column names ending with "std()" (ignoring case) to "STD"
- Change all column names ending with "freq()" (ignoring case) to "Frequency"
- Replace all instances of "tBody" with "TimeBody"
- Replace all instances of "meanFrequency" with "MeanFrequency"
- Replace all instances of "BodyBody" with "Body"

7) Aggregate the data on Subject and Activity, apply the mean for all observations, then save to tidyResults.csv
