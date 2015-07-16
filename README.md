# cleaning_data_course_project
This repository contains the course project for the Getting and Cleaning Data course on Coursera.

## run_analysis.R
This R script creates a tidy data set from the raw UCI smartphone data. It requires that the user has already downloaded and uzipped the data. The user will also need to set the working directory to be the downloaded, unzipped folder containing the data called "UCI HAR Dataset". The script will perform the following actions.
- Read the training and test data into R
- Label the activities with descriptive variable names such as "LAYING", "SITTING", ect.
- Rename the variables in the data with meaningful variable names taken from features.txt document
- Subsets the data selecting only variables that contain the substring "mean" or "std" using a regular expression
- Saves the data as a csv file named tidy_data.csv in the "UCI HAR Dataset" folder

The output file, tidy_data.csv, meets the requirements of this assignment because it has 
- one variable per column
- one observation per row
- descriptive variable names
- and descriptive activity labels.

The variable names are not all that meaninful to me but I am assuming they would make sense to a final user of the data. I chose to keep any varible that had the substring "mean" or "std" because I wanted to be sure that all means and standard deviations were included.

## CodeBook.md
This document describes all of the varibles in tidy_data.csv
