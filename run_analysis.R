#!/usr/bin/env Rscript

# This script creates 2 tidy datasets and writes them to text files

library(dplyr)
library(stringr)
library(tidyr)
library(reshape2)

# Part A: merge training and testing data and make tidy..........................

bring_together <- function(datafile, idfile, activityfile, 
                           featurefile = "UCI HAR Dataset/features.txt") {
  # this function takes:
  #  1. a path to the X_train.txt or X_test.txt file (i.e. 'datafile')
  #  2. a path to the subject_train.txt or subject_test.txt file (i.e. 'idfile')
  #  3. a path to the y_train.txt or y_test.txt file (i.e. 'activityfile') 
  #  4. a path to the features.txt file is given a default value as it applies to both
  #     training and testing dataframes
  #  ...the function returns a dataframe with 'subjectid' and 'activity' columns added 
  #     as factor variables, and it assigns column names 
  
  # read in the data file
  data <- read.csv(datafile, header=FALSE, sep="", stringsAsFactors=FALSE)
  # read in the id file
  ids <- read.csv(idfile, header=FALSE, sep="", stringsAsFactors=FALSE)
  # read in the feature names file
  features <- read.csv(featurefile, header=FALSE, sep="", stringsAsFactors=FALSE)
  # read in the activity file
  activity <- read.csv(activityfile, header=FALSE, sep="", stringsAsFactors=FALSE)
  
  # select only mean and standard deviation columns using regex on feature names
  data <- data[,features[grep("*-mean\\(\\)-*|*-std\\(\\)-*", features$V2),1]]
  # assign feature names as column names using same regex as above; remove odd chars; convert to lower
  names(data) <- str_replace_all(features[grep("*-mean\\(\\)-*|*-std\\(\\)-*", features$V2),2], "[()-]", "")
  # convert column names to all lowercase
  names(data) <- tolower(names(data))
  
  # add ids as factor column to data
  data$subjectid <- as.factor(paste0("SUBJECT_", ids[,1]))
  
  # add activity as a factor column to data; assign labels manually
  data$activity <- factor(as.numeric(activity[,1]), 
                          levels=c("1","2","3","4","5","6"),
                          labels=c("WALKING","WALKING_UPSTAIRS",
                                   "WALKING_DOWNSTAIRS","SITTING",
                                   "STANDING","LAYING"))
  
  # return the resulting dataframe 
  return(data)
}

# pass filepaths to function to get training data to a dataframe 
trainingdata <- bring_together(datafile="UCI HAR Dataset/train/X_train.txt",
                               idfile="UCI HAR Dataset/train/subject_train.txt",
                               activityfile="UCI HAR Dataset/train/y_train.txt")

# pass filepaths to function to get testing data to a dataframe
testingdata <- bring_together(datafile="UCI HAR Dataset/test/X_test.txt", 
                           idfile="UCI HAR Dataset/test/subject_test.txt",
                           activityfile = "UCI HAR Dataset/test/y_test.txt")

# MERGE the testing and training dataframes to make 1 large dataframe
trainingtesting <- rbind(trainingdata, testingdata)

# add a column identifying the observation; each row is an observation of a TRIAL
trainingtesting$trial <- paste0("TRIAL_", seq(from=1, to=nrow(trainingtesting)))

# reorder columns so that trial, subjectid, and activity are on the left
trainingtesting <- trainingtesting[,c(69,67,68,1:66)]

# write result to text file
write.table(trainingtesting, file="uci_by_trial.txt", quote=FALSE, row.names=FALSE)


# part B: Create a second tidy data structure that shows the average of each
# variable for each activity and for each subject

# create table of the average of each variable by ACTIVITY
bysubjectid <- tibble::as_tibble(trainingtesting) %>%
  gather(variable, result, tbodyaccmeanx:fbodybodygyrojerkmagstd) %>%
  group_by(variable, subjectid) %>%
  summarise(variable_mean = mean(result)) %>%
  spread(subjectid,variable_mean)

# create table of average of each variable by SUBJECT
byactivity <- tibble::as_tibble(trainingtesting) %>%
  gather(variable, result, tbodyaccmeanx:fbodybodygyrojerkmagstd) %>%
  group_by(variable, activity) %>%
  summarise(variable_mean = mean(result)) %>%
  spread(activity,variable_mean)

# bring the tables together by joining on 'variable' ; fix variable names of this table
joined_variable_table <- left_join(byactivity, bysubjectid, by="variable") %>%
  dplyr::rename_at(vars(-variable), ~ paste0(tolower(str_replace_all(.,"_","")),"mean"))
  
# write to file
write.table(joined_variable_table, file="uci_by_variable.txt", quote=FALSE, row.names=FALSE)






