#description of the data:
#http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones


rm(list = ls())

#getting the dataset if it is not already present in the working directory:
datafile <- "UCI HAR Dataset.zip"
if (!file.exists(datafile)) {
  url2 <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip "
  download.file(url2, datafile, method = "curl")
  }
if (!file.exists("UCI HAR Dataset")) {
  unzip(datafile)
}

#--reading in all the files--
#first the labeling files:
activity_labels <- read.table("./UCI HAR Dataset/activity_labels.txt", 
                              col.names=c("activityClass", "activityName"))
features <- read.table("./UCI HAR Dataset/features.txt", header=F)
	
#the the data files:
testfiles <- paste("./UCI HAR Dataset/test/", 
                   list.files("./UCI HAR Dataset/test", pattern = "*.txt"), sep="")
trainfiles <- paste("./UCI HAR Dataset/train/", 
                    list.files("./UCI HAR Dataset/train", pattern = "*.txt"), sep="")

#pulling out the location names of the data columns we want from features (mean and std files)
var_m_sd <- grep(".*mean.*|.*std.*", features[,2])
Vnames <- features[var_m_sd,2]
Vnames = gsub('-mean', 'Mean', Vnames)
Vnames = gsub('-std', 'Std', Vnames)
Vnames <- gsub('[-()]', '', Vnames)

#bringing in the data files train and test and binding them
#only the desired variables for x_train and x_test are brought in via var_m_sd
#then xtrain and xtest are column-labeled via concatonated "cleaned' Vnames above

subjectTrain <- read.table(trainfiles[1], col.names="subject")
xtrain <- read.table(trainfiles[2], header=F)[var_m_sd]
colnames(xtrain) <- Vnames
ytrain <- read.table(trainfiles[3], col.names="activityClass")
train<-cbind(subjectTrain, ytrain, xtrain)

subjectTest <- read.table(testfiles[1], col.names="subject")
xtest <- read.table(testfiles[2], header=F)[var_m_sd]
colnames(xtest) <- Vnames
ytest <- read.table(testfiles[3], col.names="activityClass")
test <- cbind(subjectTest, ytest, xtest)
	


# Merges the training and the test sets to create one data set.
data1 <-rbind(test, train)

#Labeling the activiites with descriptive variable names
data <- merge(data1, activity_labels, by="activityClass")
#reorder a tad to put the activityName closer to the front
data <- data[ ,c(1, 82, 2:81)]
#making sure what should be labels are not numeric
data[ ,1:3] = apply(data[ ,1:3], 2, function(x) as.factor(x))


#a second, independent tidy data set with the average of each variable for each activity and each subject.
#get rid of the activity code
data <- data[,-1]
library(reshape2)
allData <- melt(data, id = c("subject", "activityName"))
data.mean <- dcast(allData, subject + activityName ~ variable, mean)

#saving that data set to a file
write.table(data.mean, "tidy.txt", row.names = FALSE, quote = FALSE)
