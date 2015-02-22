## Read data
# Train
train<-read.table("./train/X_train.txt")
trainLa<-read.table("./train/y_train.txt")
trainSub<-read.table("./train/subject_train.txt")

# Test
test<-read.table("./test/X_test.txt")
testLa<-read.table("./test/y_test.txt")
testSub<-read.table("./test/subject_test.txt")

# General
features<-read.table("./features.txt")
activity<-read.table("./activity_labels.txt")

## Merge Data
dataMain<-merge(train,test,all=TRUE)
features<-t(features[,2])
colnames(dataMain)<-make.names(as.character(features), unique=TRUE)
dataSub<-merge(trainSub,testSub,all=TRUE)
colnames(dataSub)<-"Subject"
dataLa<-rbind(trainLa,testLa)
colnames(dataLa)<-"Activity_Label"

## Extract Mean & Std from measurements
names(dataMain)<-make.names(names(dataMain),unique=TRUE)
dataMean<-select(dataMain,contains("mean"))
dataStd<-select(dataMain,contains("std"))
dataUse<-cbind(dataMean,dataStd,dataSub,dataLa)

## Mean of each variable for each activity and each subject
tidy_data<-group_by(dataUse,Subject,Activity_Label)
dataMean<-summarise_each(tidy_data,funs(mean))

## Change and Order the Names
dataMean[,2]<-activity[,2]
colnames(dataMean)<-gsub("Activity_Label","Activity",colnames(dataMean),fixed = TRUE)
colnames(dataMean)<-gsub(".","",colnames(dataMean),fixed = TRUE)
colnames(dataMean)<-gsub("std","Std",colnames(dataMean),fixed = TRUE)
colnames(dataMean)<-gsub("mean","Mean",colnames(dataMean),fixed = TRUE)
colnames(dataMean)<-gsub("BodyBody","Body",colnames(dataMean),fixed = TRUE)

## Output
write.table(dataMean,file = "dataFinal.txt",row.name=FALSE)

