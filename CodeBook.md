
###CodeBook

###DataSource

The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 
This dataset is derived from Human Activity Recognition Using Smartphones Dataset.

##Source Files:

* 'README.txt'
* 'features_info.txt': Shows information about the variables used on the feature vector.
* 'features.txt': List of all features like mean ,std,coeff of accelerometers.
* 'activity_labels.txt': Links the class labels with their activity name,contains the list of activities.
* 'train/X_train.txt': Training set,Records for all the trained  test variables in Features.
* 'train/y_train.txt': Training labels.
* 'test/X_test.txt': Test set., Records for all the variables in Features.
* 'test/y_test.txt': Test labels.
*subject_train.txt: will give you the list with subjectID from  1to 30 , these ID belong to the group of people to whom the survey conducted with respect to training.
*subject_test.txt: will give you the list with subjectID from  1to 30 , these ID belong to the group of people to whom the survey conducted with respect to test.

###Transformations
*Training and test data set rows were merged and then a unified data set created from the source files.
*Measurements were extracted for mean, standard deviation for each measurement.
*variable/column names were labeled with descriptive cleaner names.
*Results were output as an indepenent tidy data set at TidyData.txt

###run_analysis.R implements the above steps:
*Require reshape2  librareis.
*Load both test and train data which contains 2947 and 7352 respectively.
*Load the features and activity labels.
*Extract the mean and standard deviation column names and data.
*Merge data set.
*Melt the dataset and cast to get the  average of each variable for each activity and each subject.



