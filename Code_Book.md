Code Book for run\_analysis.R
================

Identifiers
-----------

| factor labels   | decription                                       |
|:----------------|:-------------------------------------------------|
| "activityClass" | A numeric representation of the type of activity |
| "activityName"  | A descriptor of the type of activity             |
| "subject"       | The ID of the test subjects (1 to 30)            |

#### activityClass

1.  WALKING
2.  WALKING\_UPSTAIRS
3.  WALKING\_DOWNSTAIRS
4.  SITTING
5.  STANDING
6.  LAYING

#### The variables are defined as follows:

<table style="width:117%;">
<colgroup>
<col width="20%" />
<col width="95%" />
</colgroup>
<thead>
<tr class="header">
<th align="left">variable</th>
<th align="left">description</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td align="left">t</td>
<td align="left">raw signals, where t denotes time</td>
</tr>
<tr class="even">
<td align="left">f</td>
<td align="left">Fast Fourier Transform (FFT) signals, where f denotes the frequency domain signal feature accelerometer and gyroscope (Acc, Gyro) readings.Acc was separated into body and gravity acceleration signals (Body, Gravity). Body linear acceleration and angular velocity were derived in time to obtain jerk signals (Jerk). The magnitude of the 3 dimensional signals are presented as a Euclidean norm with (Mag) denotation.</td>
</tr>
<tr class="odd">
<td align="left">Mean</td>
<td align="left">Mean value of signals</td>
</tr>
<tr class="even">
<td align="left">Std</td>
<td align="left">Standard deviation of signals</td>
</tr>
<tr class="odd">
<td align="left">X, Y, Z</td>
<td align="left">3-axial signals are possible, in the X, Y, Z directions</td>
</tr>
</tbody>
</table>

#### The full list of variables—

-   "tBodyAccMeanX"
-   "tBodyAccMeanY"
-   "tBodyAccMeanZ"
-   "tBodyAccStdX"
-   "tBodyAccStdY"
-   "tBodyAccStdZ"
-   "tGravityAccMeanX"
-   "tGravityAccMeanY"
-   "tGravityAccMeanZ"
-   "tGravityAccStdX"
-   "tGravityAccStdY"
-   "tGravityAccStdZ"
-   "tBodyAccJerkMeanX"
-   "tBodyAccJerkMeanY"
-   "tBodyAccJerkMeanZ"
-   "tBodyAccJerkStdX"
-   "tBodyAccJerkStdY"
-   "tBodyAccJerkStdZ"
-   "tBodyGyroMeanX"
-   "tBodyGyroMeanY"
-   "tBodyGyroMeanZ"
-   "tBodyGyroStdX"
-   "tBodyGyroStdY"
-   "tBodyGyroStdZ"
-   "tBodyGyroJerkMeanX"
-   "tBodyGyroJerkMeanY"
-   "tBodyGyroJerkMeanZ"
-   "tBodyGyroJerkStdX"
-   "tBodyGyroJerkStdY"
-   "tBodyGyroJerkStdZ"
-   "tBodyAccMagMean"
-   "tBodyAccMagStd"
-   "tGravityAccMagMean"
-   "tGravityAccMagStd"
-   "tBodyAccJerkMagMean"
-   "tBodyAccJerkMagStd"
-   "tBodyGyroMagMean"
-   "tBodyGyroMagStd"
-   "tBodyGyroJerkMagMean"
-   "tBodyGyroJerkMagStd"
-   "fBodyAccMeanX"
-   "fBodyAccMeanY"
-   "fBodyAccMeanZ"
-   "fBodyAccStdX"
-   "fBodyAccStdY"
-   "fBodyAccStdZ"
-   "fBodyAccMeanFreqX"
-   "fBodyAccMeanFreqY"
-   "fBodyAccMeanFreqZ"
-   "fBodyAccJerkMeanX"
-   "fBodyAccJerkMeanY"
-   "fBodyAccJerkMeanZ"
-   "fBodyAccJerkStdX"
-   "fBodyAccJerkStdY"
-   "fBodyAccJerkStdZ"
-   "fBodyAccJerkMeanFreqX"
-   "fBodyAccJerkMeanFreqY"
-   "fBodyAccJerkMeanFreqZ"
-   "fBodyGyroMeanX"
-   "fBodyGyroMeanY"
-   "fBodyGyroMeanZ"
-   "fBodyGyroStdX"
-   "fBodyGyroStdY"
-   "fBodyGyroStdZ"
-   "fBodyGyroMeanFreqX"
-   "fBodyGyroMeanFreqY"
-   "fBodyGyroMeanFreqZ"
-   "fBodyAccMagMean"
-   "fBodyAccMagStd"
-   "fBodyAccMagMeanFreq"
-   "fBodyBodyAccJerkMagMean"
-   "fBodyBodyAccJerkMagStd"
-   "fBodyBodyAccJerkMagMeanFreq"
-   "fBodyBodyGyroMagMean"
-   "fBodyBodyGyroMagStd"
-   "fBodyBodyGyroMagMeanFreq"
-   "fBodyBodyGyroJerkMagMean"
-   "fBodyBodyGyroJerkMagStd"
-   "fBodyBodyGyroJerkMagMeanFreq"
