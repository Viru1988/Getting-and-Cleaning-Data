### Getting and cleaning the data 
This file describes about the list of files and its functionality in the working directory.
          There has been an Experiment carried out between 3o volunteers  within the age of 19-48 and they performed the following 6 activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. By using this experiment a bunch of data has been collected and they can be downloaded from the link "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip " .This Zip file contains the Training and test data sets, these data sets are later merged. Merged Dataset will be containing more data and we will be finding the mean of each and every activity and the subject by preparing a tidy data set.
* First download all the files from the link which mentioned above, place all the files in one folder and set the working directory as the same.
* run_analysis.R-->this file will  will merge the training and test data  together to form a tidy data set which will show the average of each activity with respect to subject in all the features. 
	* get all the activity from activity label file.
	* getting all the features obtained from the device
	* reading records from test & Training files
	* renaming the column names with feature details in test and training data.
	* gettign the list of subjectids from Training and testing data.
	* renaming the column name as SubjectId for both training and testing results.
	* getting the data from test and training detail with respect to their Activities.
	* binding the activityid and subjectid column to DataFrame.
	* bring both Taining and Test dataset as one
	* grouping all column based on Mean and std
	* merge data between activity types and mean std data with respect to activity id
	* all the mean and std data with respect to all the below conditions were melted to avoid unwanted data
	* the Tidy data set is written into a new file.

* code  book is a file which describes about all the vairables in the dataset. It explains about the variables whcih are used in cleaning up the data.
* The code book helps to identify  the variables in the tidy data which will be created after running the  run_analysis.R file. 
