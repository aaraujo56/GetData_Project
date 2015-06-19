# Coursera Getting and Cleaning Data Course Project
## by A. Araujo

The run_analysis.R contains the script with does the merging and cleaning of the datasets for the course project. The script first works independently with the training and test data sets, but uses a common set of variable names to enable a row merge. In order to maintain tidy data principals, it pulls in the subject labels, activity labels and then does a column bind with the measurement data in each data set. 

There is a separate table which provides descriptive labels for the activities that is used to join with the activity IDs. 

Once the test and training data rows are merged, the script selects only the columns which contain the terms "mean" and "std", removing all the other variables except for the subject and activity labels.

In the second part, to find the average of each measurement, the script uses dplyr's group-by and summarize-each functions to group the data by each subject, then by each activity, and then find the mean inside each group of rows. Each variable name is maintained, but in this new dataset it is an aggregated mean value in each column.

In order to run this locally make sure to set the working directory in line 7 of the script. You must also have the dplyr package installed.

###Files

- codebook.md - codebook for the tidy data table
- run_analysis.R - R code for analyzing the original dataset and generating a tidy data table in txt format
