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
dataLa<-rbind(trainLa,testLa)
dataMain<-cbind(dataMain,dataSub,dataLa)

## Extract Mean & Std from measurements

names(dataMain)<-make.names(names(dataMain),unique=TRUE)
dataMean<-select(dataMain,contains("mean"))
dataStd<-select(dataMain,contains("std"))
dataSelect<-cbind(dataMean,dataStd)

## Name the activities

dataMain<-mutate(dataMain,Activiy = activity[dataMain[,563],2])
dataSelect<-cbind(dataSelect,dataMain[,564])
dataSelect<-cbind(dataSelect,dataSub)

## Mean of each variable for each activity and each subject

dataMelt<-melt(dataSelect,id=c("dataMain[, 564]","V1"),measure.vars=colNames[1:86])
MeanActivity<-dcast(xmelt,dataMain[, 564] ~ variable,mean)
MeanSubject<-dcast(xmelt,V1 ~ variable,mean)
MeanAll<-merge(MeanActivity,MeanSubject,by.x="dataMain[, 564]",by.y="V1",all=TRUE)

## Output

write.table(MeanAll,file = "dataFinal.txt",row.name=FALSE)
