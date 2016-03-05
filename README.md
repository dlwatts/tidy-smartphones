README
================

R Markdown
----------

The R script run\_analysis.R downloads and merges data collected from the accelerometers from the Samsung Galaxy S smartphone into tidy data sets for easy analysis.

------------------------------------------------------------------------

### The script performs the following operations

1.  Looks for the dataset in your current working directory. If it is not found, it downloads and extracts the dataset.
    -   file.exists()
    -   unzip()

2.  It then reads in the training and test sets to create one data set, extracting only variables on the mean and standard deviation for each measurement (combining 2 steps into one).
     This segment also cleans up the test and training set column variables for readability.
    -   read.table()
    -   list.files()
    -   grep()
    -   gsub()
    -   cbind()

3.  The resulting data is then merged with descriptive variable names. The resulting “tidy” data set is given the variable **data**
    -   rbind()
    -   merge()

4.  A second, independent data set is created called **data.mean**, which stores the average of each variable for each activity and each subject.
     This table is then written to a file in the working directory called “tidy.txt”
    -   melt()
    -   dcast()
    -   write.table()

------------------------------------------------------------------------

#### More information

This script assumes you have the reshape2 library. If you do not, please run the following script:

    install.packages(“reshape2”)

This repo also includes a “Code Book”, which is a list of the variables and their descriptions.

##### Data authors

Information on the original dataset can be viewed here: <http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones>

*Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine. International Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012*
