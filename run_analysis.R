
library(reshape2)
library(plyr)
#get all the activity from activity label file.
activity_labels<-read.table("activity_labels.txt",col.names=c("activity_id","activity_name"))
#getting all the features obtained from the device
features<-read.table("features.txt")
#fetching only the fetures name
feature_names<-features[,2]
#reading records from test & Training files
test_data<-read.table("X_test.txt")
train_data<-read.table("X_train.txt")

#renaming the column names with feature details in test and training data.
colnames(test_data)<-feature_names
colnames(train_data)<-feature_names

#gettign the list of subjectids from Training and testing data.
train_subject<-read.table("subject_train.txt")
test_subject<-read.table("subject_test.txt")

#renaming the column name as SubjectId for both training and testing results.
colnames(train_subject)<-"subject_id"
colnames(test_subject)<-"subject_id"

#getting the data from test and training detail with respect to their Activities.
test_activity<-read.table("y_test.txt")
train_activity<-read.table("y_train.txt")

#replacing all the column name with activity ID eg.walking,running,etc
colnames(test_activity)<-"activity_id"
colnames(train_activity)<-"activity_id"

#binding the activityid and subjectid column to DataFrame.
test_data<-cbind(test_subject,test_activity,test_data)
train_data<-cbind(train_subject,train_activity,train_data)

#bring both Taining and Test dataset as one
ttData<-rbind(test_data,train_data)

#grouping all column based on Mean and std
allmean<-grep("mean",names(ttData),ignore.case=TRUE)
mean_data<-names(ttData)[allmean]
allstd<-grep("std",names(ttData),ignore.case=TRUE)
std_data<-names(ttData)[allstd]

#fetching only mean and std values and store it in different data frame
msdata<-ttData[,c("subject_id","activity_id",mean_data,std_data)]

#merge data between activity types and mean std data with respect to activity id
mergeddata<-merge(activity_labels,msdata,by.x="activity_id",by.y="activity_id",all=TRUE)

#all the mean and std data with respect to all the below conditions were melted to avoid unwanted data
meltdata<-melt(mergeddata,id=c("activity_id","activity_name","subject_id"))
castdata<-dcast(meltdata,activity_id+activity_name+subject_id~variable,mean)

#writing  independent tidy data set with the average of each variable for each activity and each subject into a text file
write.table(castdata,file="finaldata.txt",row.names=FALSE)

