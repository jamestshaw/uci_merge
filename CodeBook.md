============================================================================================================
                                             CodeBook
============================================================================================================

Dataset 1: uci_by_trial.txt ................................................................................

The uci_by_trial.txt dataset is the solution to the first part of the assignment.  It is comprised of the merged 
training and testing datasets.  In the original experiment, readings are taken from a wearable device while
a subject (participant) performs one of a number of tasks.  Each task is performed many times by each subject such
that we have many 'trials'.  While performing these tasks, a myriad of measures is collected over time.  These measures 
are contained in their raw form in subdirectories in the 'UCI HAR Dataset' folder.  The datasets that we are operating
on i.e. X_test.txt, X_train.txt, etc. are already transformations of this raw data and various operations
have been performed on them. In our case, we were asked to collect only measures that record the mean and standard 
deviations of trials.  This resulted in the extaction of 66 variables. 

Given that each trial is an observation, I added 3 more columns. A 'trial' column with a unique id for each trial, 
a 'subjectid' column, and an activity column.  A brief description of the columns is as follows:

[1] "trial"
	each observation is that of a trial (these are unique)  

[2] "subjectid"
	the id of the participant that performed the trial 

[3] "activity"
	the activity performed (walking, walking up stairs, walking down stairs, sitting, standing, laying)

[4] "tbodyaccmeanx"
	average time body accelleration on x axis 

[5] "tbodyaccmeany"
	average time body acceleration on y axis 

[6] "tbodyaccmeanz"
	average time body acceleration on z axis 

[7] "tbodyaccstdx" 
	average time body acceleration standard deviation on x axis 

[8] "tbodyaccstdy" 
	average time body acceleration standard deviation on y axis 

[9] "tbodyaccstdz"
	average time body acceleration standard deviation on z axis

[10] "tgravityaccmeanx"
	average time gravity acceleration on x axis 

[11] "tgravityaccmeany"
	average time gravity acceleration on y axis

[12] "tgravityaccmeanz"
	average time gravity acceleration on z axis

[13] "tgravityaccstdx"
	average time gravity acceleration standard deviation on the x axis

[14] "tgravityaccstdy" 
	average time gravity acceleration standard deviation on the y axis

[15] "tgravityaccstdz" 
	average time gravity acceleration standard deviation on the z axis

[16] "tbodyaccjerkmeanx" 
	average time body acceleration jerk on the x axis

[17] "tbodyaccjerkmeany"
	average time body acceleration jerk on the y axis

[18] "tbodyaccjerkmeanz"
	average time body acceleration jerk on the z axis

[19] "tbodyaccjerkstdx"
	average time body acceleration jerk standard deviation on the x axis

[20] "tbodyaccjerkstdy" 
	average time body acceleration jerk standard deviation on the y axis

[21] "tbodyaccjerkstdz"
	average time body acceleration jerk standard deviation on the z axis

[22] "tbodygyromeanx" 
	average time body gyroscope mean on the x axis

[23] "tbodygyromeany"
	average time body gyroscope mean on the y axis

[24] "tbodygyromeanz"
	average time body gyroscope mean on the z axis

[25] "tbodygyrostdx" 
	average time body gyroscope standard deviation on the x axis

[26] "tbodygyrostdy" 
	average time body gyroscope standard deviation on the y axis

[27] "tbodygyrostdz"
	average time body gyroscope standard deviation on the z axis

[28] "tbodygyrojerkmeanx"
	average time body gyroscope jerk mean on the x axis

[29] "tbodygyrojerkmeany"
	average time body gyroscope jerk mean on the y axis

[30] "tbodygyrojerkmeanz"
	average time body gyroscope jerk mean on the z axis

[31] "tbodygyrojerkstdx"
	average time body gyroscope jerk standard deviation on the x axis

[32] "tbodygyrojerkstdy" 
	average time body gyroscope jerk standard deviation on the y axis

[33] "tbodygyrojerkstdz"
	average time body gyroscope jerk standard deviation on the z axis

[34] "tbodyaccmagmean" 
	average time body acceleration magnitude 

[35] "tbodyaccmagstd" 
	average time body acceleration standard deviation

[36] "tgravityaccmagmean"  
	average time body gravity acceleration magnitude

[37] "tgravityaccmagstd"
	average time body gravity acceleration magnitude standard deviation

[38] "tbodyaccjerkmagmean"  
	average time body acceleration jerk magnitude 

[39] "tbodyaccjerkmagstd" 
	average time body acceleration jerk magnitude standard deviation

[40] "tbodygyromagmean" 
	average time body gyroscope magnitude

[41] "tbodygyromagstd" 
	average time body gyroscope magnitude standard deviation 

[42] "tbodygyrojerkmagmean"  
	average time body gyroscope jerk magnitude 

[43] "tbodygyrojerkmagstd" 
	average time body gyroscope jerk magnitude standard deviation

[44] "fbodyaccmeanx"
	average fourier-transformed body acceleration on x axis 

[45] "fbodyaccmeany"
	average fourier-transformed body acceleration mean on y axis

[46] "fbodyaccmeanz"
	average fourier-transformed body acceleration on z axis

[47] "fbodyaccstdx" 
	average fourier-transformed body acceleration standard deviation on x axis

[48] "fbodyaccstdy"
	average fourier-transformed body acceleration standard deviation on y axis

[49] "fbodyaccstdz"
	average fourier-transformed body acceleration standard deviation on z axis 

[50] "fbodyaccjerkmeanx"
	average fourier-transformed body acceleration jerk on x axis

[51] "fbodyaccjerkmeany" 
	average fourier-transformed body acceleration jerk on y axis

[52] "fbodyaccjerkmeanz"
	average fourier-transformed body acceleration jerk on z axis

[53] "fbodyaccjerkstdx"
	average fourier-transformed body acceleration jerk standard deviation on x axis

[54] "fbodyaccjerkstdy"
	average fourier-transformed body acceleration jerk standard deviation on y axis

[55] "fbodyaccjerkstdz"
	average fourier-transformed body acceleration jerk standard deviation on z axis

[56] "fbodygyromeanx" 
	average fourier-transformed body gyroscope on x axis

[57] "fbodygyromeany"
	average fourier-transformed body gyroscope on y axis

[58] "fbodygyromeanz"
	average fourier-transformed body gyroscope on z axis

[59] "fbodygyrostdx"
	average fourier-transformed body gyroscope standard deviation on x axis

[60] "fbodygyrostdy" 
	average fourier-transformed body gyroscope standard deviation on y axis

[61] "fbodygyrostdz"
	average fourier-transformed body gyroscope standard deviation on z axis

[62] "fbodyaccmagmean" 
	average fourier-transformed body acceleration magnitude

[63] "fbodyaccmagstd"
	average fourier-transformed body acceleration standard deviation

[64] "fbodybodyaccjerkmagmean" 
	average fourier-transformed body acceleration jerk magnitude

[65] "fbodybodyaccjerkmagstd"
	average fourier-transformed body acceleration jerk magnitude standard deviation

[66] "fbodybodygyromagmean"
	average fourier-transformed body gyroscope 

[67] "fbodybodygyromagstd"
	average fourier-transformed body gyroscope standard deviation
 
[68] "fbodybodygyrojerkmagmean"
	average fourier-transformed body gyroscope magnitude jerk

[69] "fbodybodygyrojerkmagstd"
	average fourier-transformed body gyroscope jerk magnitude standard deviation

Dataset 2: uci_by_variable.txt .............................................................................

The uci_by_variable.txt dataset is the solution to the second part of the assignment.  The resulting table 
has 67 rows (one for each of the 66 original variables + a header) and 37 columns (described below). In this 
table, each observation is actually an observation on a variable, and we are essentially measuring the tendency 
of the variable itself when it is aggregated by subject or by activity.

[1] "variable"
	This is the variable that is being observed.

[2] "walkingmean"
	Average of the variable across all trials in which the activity was walking.

[3] "walkingupstairsmean"
	 Average of the variable across all trials in which the activity was walking up stairs.

[4] "walkingdownstairsmean"
	Average of the variable across all trials in which the activity was walking down stairs.

[5] "sittingmean"  
	Average of the variable across all trials in which the activity was sitting.

[6] "standingmean" 
	Average of the variable across all trials in which the activity was standing.

[7] "layingmean"
	Average of the variable across all trials in which the activity was laying.

[8] "subject1mean"
	Average of the variable across all trials in which the subject was subject 1.

[9] "subject11mean"
	Average of the variable across all trials in which the subject was subject 11.

[10] "subject14mean"
	Average of the variable across all trials in which the subject was subject 14.

[11] "subject15mean"
	Average of the variable across all trials in which the subject was subject 15.

[12] "subject16mean" 
	Average of the variable across all trials in which the subject was subject 16.

[13] "subject17mean"
	Average of the variable across all trials in which the subject was subject 17.

[14] "subject19mean"
	Average of the variable across all trials in which the subject was subject 19.

[15] "subject21mean"
	Average of the variable across all trials in which the subject was subject 21.

[16] "subject22mean"
	Average of the variable across all trials in which the subject was subject 22.

[17] "subject23mean"
	Average of the variable across all trials in which the subject was subject 23.

[18] "subject25mean"
	Average of the variable across all trials in which the subject was subject 25.

[19] "subject26mean" 
	Average of the variable across all trials in which the subject was subject 26.

[20] "subject27mean"
	Average of the variable across all trials in which the subject was subject 27.

[21] "subject28mean"
	Average of the variable across all trials in which the subject was subject 28.

[22] "subject29mean"
	Average of the variable across all trials in which the subject was subject 29.

[23] "subject3mean"
	Average of the variable across all trials in which the subject was subject 3.

[24] "subject30mean" 
	Average of the variable across all trials in which the subject was subject 30.

[25] "subject5mean"
	Average of the variable across all trials in which the subject was subject 5.

[26] "subject6mean"
	Average of the variable across all trials in which the subject was subject 6.

[27] "subject7mean"
	Average of the variable across all trials in which the subject was subject 7.

[28] "subject8mean"
	Average of the variable across all trials in which the subject was subject 8.

[29] "subject10mean"
	Average of the variable across all trials in which the subject was subject 10.

[30] "subject12mean"
	Average of the variable across all trials in which the subject was subject 12.

[31] "subject13mean" 
	Average of the variable across all trials in which the subject was subject 13.

[32] "subject18mean" 
	Average of the variable across all trials in which the subject was subject 18.

[33] "subject2mean" 
	Average of the variable across all trials in which the subject was subject 2.

[34] "subject20mean"
	Average of the variable across all trials in which the subject was subject 20.

[35] "subject24mean"
	Average of the variable across all trials in which the subject was subject 24.

[36] "subject4mean" 
	Average of the variable across all trials in which the subject was subject 4.

[37] "subject9mean"
	Average of the variable across all trials in which the subject was subject 9.


