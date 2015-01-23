## Getting and Cleaning Data - Course Project
## R Script to read in the raw data from the working directory
## process it as per instructions (see README.md file for details)
## extract relevant data and convert it into a tidy data file
## The script also outputs material for use in producing a Code Book

## This script uses functions from the dplyr library
## if you have not already done so you will need to install and load these using
## >install.packages("dplyr")
## >library(dplyr)

## Read in the datafiles which are in subdirectories of the working directory

fileActivityLabels<-"UCI HAR Dataset/activity_labels.txt"
fileFeatures<-"UCI HAR Dataset/features.txt"
fileSubjectTest<-"UCI HAR Dataset/test/subject_test.txt"
fileyTest<-"UCI HAR Dataset/test/y_test.txt"
fileXTest<-"UCI HAR Dataset/test/X_test.txt"
fileSubjectTrain<-"UCI HAR Dataset/train/subject_train.txt"
fileyTrain<-"UCI HAR Dataset/train/y_train.txt"
fileXTrain<-"UCI HAR Dataset/train/X_train.txt"

ActivityLabels<-read.table(fileActivityLabels)
Features<-read.table(fileFeatures)
SubjectTest<-read.table(fileSubjectTest)
yTest<-read.table(fileyTest)
XTest<-read.table(fileXTest)
SubjectTrain<-read.table(fileSubjectTrain)
yTrain<-read.table(fileyTrain)
XTrain<-read.table(fileXTrain)

## Rename duplicates in the Features labels
## Apply labels to the columns and glue together the components into one file
## XTrain and XTest are the main data files for the training and test sets
## These are glued one below the other to form XAll
## Features are the column lables for XTrain and Xtest, and so XAll
## SubjectTrain and SubjectTest give the subject number for each row
## They are glued below each other to form SubjectAll
## yTrain and YTest give the activity number for each row
## They are glued below each other to form yAll
## ActivityLabels is a separate file giving labels for the activity numbers

Features$V2<-make.names(Features$V2,unique=TRUE)
names(XTrain)<-Features$V2
names(XTest)<-Features$V2
names(SubjectTrain)<-"Subject"
names(SubjectTest)<-"Subject"
names(yTrain)<-"Activity"
names(yTest)<-"Activity"
XAll<-rbind(XTrain,XTest)
SubjectAll<-rbind(SubjectTrain,SubjectTest)
yAll<-rbind(yTrain,yTest)

## Clean up to free up memory

rm(XTrain,XTest,yTrain,yTest,SubjectTrain,SubjectTest)

## Extract the relevant columns of the data relating to means and stds
## tbl_df to permit use of dplyr functions
## Finally SubjectAll and yAll are glued to the left of XAll
## XOut is the unsummarised tidy data frame

XAll<-tbl_df(XAll)
XMean<-select(XAll,contains(".mean."))
XStd<-select(XAll,contains(".std."))
XOut<-tbl_df(cbind(SubjectAll,yAll,XMean,XStd))

## Take the mean value of each measure (column) for each combination of
## subject and activity and store in Summ

XOut<-group_by(XOut,Subject,Activity)
Summ<-summarise_each(XOut,funs(mean))

## Attach descriptive labels to the activities
## Tidy up the names of the variables and note that they are now
## subject-activity mean values

Summ$Activity<-as.factor(Summ$Activity)
levels(Summ$Activity)<-ActivityLabels$V2
OriginalNames<-names(Summ)
names(Summ)<-gsub("Acc","Accel",names(Summ))
names(Summ)<-gsub("BodyBody","Body",names(Summ))
names(Summ)<-gsub("std","stdev",names(Summ))
names(Summ)<-gsub("tBody","Subj.Activity.Mean.of...Time.Domain.Body.",
   names(Summ))
names(Summ)<-gsub("tGravity","Subj.Activity.Mean.of...Time.Domain.Gravity.",
   names(Summ))
names(Summ)<-gsub("fBody","Subj.Activity.Mean.of...Freq.Domain.Body.",
   names(Summ))

## Output the file to the working directory

write.table(Summ,file="tidy.txt",row.names=FALSE)

## This is the final file which is uploaded

## Subsequent code is not used directly for submission
## Output the basis of the Code Book to the working directory
## Note that this is NOT the final Code Book as submitted

## AllNames<-cbind(names(Summ),OriginalNames)
## write.table(AllNames,"CodeBook.txt",row.names=FALSE,
##  col.names=FALSE,
##  sep="      mean by subject and activity from the original feature called ")

