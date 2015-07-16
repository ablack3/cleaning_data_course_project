########################################################################################################
# Program: run_analysis.R
# Purpose: Download, read in, and format the UCI smartphone data into a tidy dataset as
#          described in the project assignment for Getting and Cleaning Data Coursera course.
# Date: July 15, 2015
#
########################################################################################################

# Set working directory to the location of the downloaded and unziped UCI Smartphone Data 
setwd("/Users/adamblack/Documents/Coursera/Data Science/getting and cleaning data/project/Smartphone_Data/UCI HAR Dataset")

#read in data
X_test <- read.table("./test/X_test.txt")
Y_test <- read.table("./test/Y_test.txt")
subject_test <- read.table("./test/subject_test.txt")

X_train <- read.table("./train/X_train.txt")
Y_train <- read.table("./train/Y_train.txt")
subject_train <- read.table("./train/subject_train.txt")

# read in feature labels and activity labels
features <- read.table("./features.txt")
activity_labels <- read.table("./activity_labels.txt")
names(activity_labels) <- c("activity_code", "activity")

# label activities with descriptive variable names
Y_train_descriptive <- lapply(Y_train, function(y){activity_labels[y,2]})
Y_test_descriptive <- lapply(Y_test, function(y){activity_labels[y,2]})

# rename variables with meaningful variable names 
names(Y_train_descriptive) <- c("activity")
names(Y_test_descriptive) <- c("activity")

names(subject_test) <- c("subject_ID")
names(subject_train) <- c("subject_ID")

# features[,2] corresponds exactly to the variable names in X_train and X_test
names(X_train) <- features[,2]
names(X_test) <- features[,2]

# put the data together
train <- cbind(subject_train, Y_train_descriptive, X_train)
test <- cbind(subject_test, Y_test_descriptive, X_test)

data <- rbind(test, train)

# keep only variables describing means and standard deviations
# define a regular expression pattern to match any string containing 'mean' or 'std'
regex <- c("^.*mean|std")

# get indicies of variables containing mean or std
column_indicies <- grep(regex, names(data))

# subset data keeping only subject_ID, activity, and all variables containing a mean or a standard deviation
tidy_data <- data[, c(1,2,column_indicies)]

# save the tidy data set as a csv
write.csv(tidy_data, file="./tidy_data.csv", )


# Note:
# To read in data, set working directory to directory containing tidy_data.csv and run the following command:
# data <- read.csv("./tidy_data.csv")
















