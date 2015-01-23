### Programming Assignment, Get and Clean Data Course, January 2015

## Introduction

This assignment takes as input a number of files of information on Human Activity
Recognition using Smartphones.  These are processed in R and used to produce a
tidy data file and associated code book.

The input data have been downloaded from
https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip
A full description of the downloaded data is at
http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones
The data were downloaded on 17 January 2015 at 20:12 UTC.

Further information is available in the README file which can be downloaded with the data.
The measured data are complex and users are strongly advised to read the README
file which is downloaded with the data, before undertaking further processing.

Users of the data and therefore of the output data produced in this assignment are
asked to acknowledge their source by citing:
Davide Anguita, Allesandro Ghio, Luca Oneto, Xavier Parra and Jorge L Reyes Ortiz.
Human Acticity Recognition on Smartphones using a Multiclass Hardware-Friendly
Support Vector Machine.  International Workshop of Ambient Assisted Living
(IWAAL 2012).  Vitoria-Gasteiz, Spain, Dec 2012.

## how to use the R script run_analysis.R

The data are processed using the R script run_analysis.R
The input data are files downloaded as above and are 
assumed to be present in the working directory for R.
The script requires use of the dplyr package, so if this package has not
already been installed the user needs to give the R command
>install.packages("dplyr")
and then if it is not already in use
>library(dplyr)
Then use the script
>source("run_analysis.R")

The output is produced in the working directory and is a txt file called tidy.txt

## description of the output from run_analysis.R

The output is a tidy data file tidy.txt in the working directory.  
This file consists of the mean values of certain derivations
of measured features associated with a number of subjects (30 in all) who were 
engaged in a number of activities (6 in all).  
The file contains a header row plus 180 rows of data. 
Each row relates to one subject and one type of activity.
The file contains 68 columns of data
The first two columns identify the subject and the activity.
The subsequent 66 columns are mean values for each particular combination of
subject and activity, on various derived feature measures, as described in 
the associated Code Book.  The first 33 mean values give means of mean values
in the original data, the subsequent 33 give means of standard deviations of
values (stdev) in the original data.
See Code Book for more details.

## how to do subsequent processing of the output

The output can be read into R from the working directory for further processing using
>read.table("tidy.txt",header=TRUE)

## Notes
The original data download consisted of a training set of data for 21 individuals
and a test set of data on a further 9 individuals.  There was data for each 
individual as they engaged in one of six different types of activity, with multiple
data records for each combination of individual and activity type.   
Each set of data consisted of 561 feature measures on a particular combination of 
individual and activity type, with multiple records for each combination, 10299 in all. 
Also available
were files relating the test and training sets of data to the individuals and
activity types, and descriptions of the activity types and features measured.

# stages in the processing (see also annotation in the run_analysis.R file)
 Read in the source data files.
 Tidy up the feature measure names to remove duplicates and render them into 
 legal R names (the function make.names with parameter unique+TRUE is used for this).
 Glue together the training and test data sets to make one data set
 extract from this for further processing only the measures relating to the mean and standard deviation 
 for each feature measure.  For this purpose those feature measures called ...mean()
 and ...std() only have been selected.  A number of other measures which include
 the word 'mean' in their descriptor have been excluded as they are not means in the sense required.
 Label the activities with descriptive names (see code book).
 Create an output, tidy, data set in which there is one row for each 
 combination of subject and activity (180 in all) with mean values taken of 
 all rows for that subject - activity combination in the original data.
 Attach descriptive variable names to this data (see code book). In so doing
 certain apparently erroneous duplications in the original names ("BodyBody") have been tidied and
 some abbreviations expanded.
 Output the tidy data file

# tidy data file tidy.txt
 Each row relates only to one subject (and one activity for that subject).
 Each column relates only to one summary measurement.

# (End)