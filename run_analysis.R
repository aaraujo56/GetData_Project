#Run data merge and cleaning

# Using the dplyr library
library(dplyr)

# Set working directory where data resides
setwd("~/Coursera/GettingData/CourseProject/UCI HAR Dataset")

# Grab vector of column names for measurements in TEST and TRAIN datasets
colNames <- read.table("./features.txt",
                       header=FALSE)

# Grab activity dataset labels for TEST and TRAIN datasets
activity.lab <- read.table("./activity_labels.txt",
                           header=FALSE, col.names=c("label_ID","activity_label"))

# Load TEST data first

# Read in subject data and provide subject column name
subjects.test <- read.table("./test/subject_test.txt",
                       header=FALSE,col.names=c("subject"))

# Read in activity type per observation and provide a column name of label_ID for
# future merge with activity labels
activity.type.test <- read.table("./test/y_test.txt",
                                       header=FALSE, col.names=c("label_ID"))

# Read in and label measurement data using labels from features.txt
meas.data.test <- read.table("./test/X_test.txt",
                 header=FALSE,col.names=colNames[,2])

#Join the activity labels to the IDs in activity.lab
activity.labeled.test <- inner_join(activity.type.test,activity.lab,by="label_ID")

# Merge together the three tables using bind_cols to get complete TEST dataset
complete.test <- activity.labeled.test %>% select(activity_label) %>% 
  bind_cols(subjects.test) %>% 
  bind_cols(meas.data.test)


# Load TRAIN data next

# Read in subject data and provide subject column name
subjects.train <- read.table("./train/subject_train.txt",
                            header=FALSE,col.names=c("subject"))

# Read in activity type per observation and provide a column name of label_ID for
# future merge with activity labels
activity.type.train <- read.table("./train/y_train.txt",
                                 header=FALSE, col.names=c("label_ID"))

# Read in and label measurement data using labels from features.txt
meas.data.train <- read.table("./train/X_train.txt",
                             header=FALSE,col.names=colNames[,2])

#Join the activity labels to the IDs in activity.lab
activity.labeled.train <- inner_join(activity.type.train,activity.lab,by="label_ID")

complete.train <- activity.labeled.train %>% select(activity_label) %>% 
  bind_cols(subjects.train) %>% 
  bind_cols(meas.data.train)

# Bind together rows of both datasets
complete.data <- bind_rows(complete.train,complete.test)

# Keep activity label and subjects, then only get variables with mean or std
complete.data <- select(complete.data,1:2,contains("mean"),contains("std"))

#### Part 2

# Group data by subjects, then activity and find the mean for each measurement variable
avg.by.subject <- complete.data %>% 
  group_by(subject,activity_label) %>%
  summarise_each(funs(mean))

# Write out tidy data set as txt file
write.table(avg.by.subject,file="./avg_by_subject.txt",row.names=FALSE)



# Keep on the columns with mean or standard deviation
meas.data.test <- select(meas.data.test,contains("mean"),contains("std"))
