##Codebook For Tidied Human Activity Recognition Using Smartphones Data Set 

Original data set can be found at http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

### Description
>The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 


###For each record it is provided:
- Triaxial acceleration from the accelerometer (total acceleration) and the estimated body acceleration.
- Triaxial Angular velocity from the gyroscope. 
- A 561-feature vector with time and frequency domain variables. 
- Its activity label. 
- An identifier of the subject who carried out the experiment.

###The dataset includes the following files:
- 'README.txt'

- 'features_info.txt': Shows information about the variables used on the feature vector.

- 'features.txt': List of all features.

- 'activity_labels.txt': Links the class labels with their activity name.

- 'train/X_train.txt': Training set.

- 'train/y_train.txt': Training labels.

- 'test/X_test.txt': Test set.

- 'test/y_test.txt': Test labels.

The following files are available for the train and test data. Their descriptions are equivalent. 

- 'train/subject_train.txt': Each row identifies the subject who performed the activity for each window sample. Its range is from 1 to 30. 

- 'train/Inertial Signals/total_acc_x_train.txt': The acceleration signal from the smartphone accelerometer X axis in standard gravity units 'g'. Every row shows a 128 element vector. The same description applies for the 'total_acc_x_train.txt' and 'total_acc_z_train.txt' files for the Y and Z axis. 

- 'train/Inertial Signals/body_acc_x_train.txt': The body acceleration signal obtained by subtracting the gravity from the total acceleration. 

- 'train/Inertial Signals/body_gyro_x_train.txt': The angular velocity vector measured by the gyroscope for each window sample. The units are radians/second. 

### Tidy_Data.txt
- This file is tidied, joint version of above mentioned data sets
- This file contains the average values for the mean and standard deviantion for each subject across each activity as opposed to raw data points found in the original data set  

### Tidy Data Variables:
- Subject
- Activity
- TimeBodyAccelerometer-mean-X
- TimeBodyAccelerometer-mean-Y
- TimeBodyAccelerometer-mean-Z
- TimeBodyAccelerometer-std-X
- TimeBodyAccelerometer-std-Y
- TimeBodyAccelerometer-std-Z
- TimeGravityAccelerometer-mean-X
- TimeGravityAccelerometer-mean-Y
- TimeGravityAccelerometer-mean-Z
- TimeGravityAccelerometer-std-X
- TimeGravityAccelerometer-std-Y
- TimeGravityAccelerometer-std-Z
- TimeBodyAccelerometerJerk-mean-X
- TimeBodyAccelerometerJerk-mean-Y
- TimeBodyAccelerometerJerk-mean-Z
- TimeBodyAccelerometerJerk-std-X
- TimeBodyAccelerometerJerk-std-Y
- TimeBodyAccelerometerJerk-std-Z
- TimeBodyGyroscope-mean-X
- TimeBodyGyroscope-mean-Y
- TimeBodyGyroscope-mean-Z
- TimeBodyGyroscope-std-X
- TimeBodyGyroscope-std-Y
- TimeBodyGyroscope-std-Z
- TimeBodyGyroscopeJerk-mean-X
- TimeBodyGyroscopeJerk-mean-Y
- TimeBodyGyroscopeJerk-mean-Z
- TimeBodyGyroscopeJerk-std-X
- TimeBodyGyroscopeJerk-std-Y
- TimeBodyGyroscopeJerk-std-Z
- TimeBodyAccelerometerMagnitude-mean
- TimeBodyAccelerometerMagnitude-std
- TimeGravityAccelerometerMagnitude-mean
- TimeGravityAccelerometerMagnitude-std
- TimeBodyAccelerometerJerkMagnitude-mean
- TimeBodyAccelerometerJerkMagnitude-std
- TimeBodyGyroscopeMagnitude-mean
- TimeBodyGyroscopeMagnitude-std
- TimeBodyGyroscopeJerkMagnitude-mean
- TimeBodyGyroscopeJerkMagnitude-std
- FrequencyBodyAccelerometer-mean-X
- FrequencyBodyAccelerometer-mean-Y
- FrequencyBodyAccelerometer-mean-Z
- FrequencyBodyAccelerometer-std-X
- FrequencyBodyAccelerometer-std-Y
- FrequencyBodyAccelerometer-std-Z
- FrequencyBodyAccelerometer-meanFreq-X
- FrequencyBodyAccelerometer-meanFreq-Y
- FrequencyBodyAccelerometer-meanFreq-Z
- FrequencyBodyAccelerometerJerk-mean-X
- FrequencyBodyAccelerometerJerk-mean-Y
- FrequencyBodyAccelerometerJerk-mean-Z
- FrequencyBodyAccelerometerJerk-std-X
- FrequencyBodyAccelerometerJerk-std-Y
- FrequencyBodyAccelerometerJerk-std-Z
- FrequencyBodyAccelerometerJerk-meanFreq-X
- FrequencyBodyAccelerometerJerk-meanFreq-Y
- FrequencyBodyAccelerometerJerk-meanFreq-Z
- FrequencyBodyGyroscope-mean-X
- FrequencyBodyGyroscope-mean-Y
- FrequencyBodyGyroscope-mean-Z
- FrequencyBodyGyroscope-std-X
- FrequencyBodyGyroscope-std-Y
- FrequencyBodyGyroscope-std-Z
- FrequencyBodyGyroscope-meanFreq-X
- FrequencyBodyGyroscope-meanFreq-Y
- FrequencyBodyGyroscope-meanFreq-Z
- FrequencyBodyAccelerometerMagnitude-mean
- FrequencyBodyAccelerometerMagnitude-std
- FrequencyBodyAccelerometerMagnitude-meanFreq
- FrequencyBodyAccelerometerJerkMagnitude-mean
- FrequencyBodyAccelerometerJerkMagnitude-std
- FrequencyBodyAccelerometerJerkMagnitude-meanFreq
- FrequencyBodyGyroscopeMagnitude-mean
- FrequencyBodyGyroscopeMagnitude-std
- FrequencyBodyGyroscopeMagnitude-meanFreq
- FrequencyBodyGyroscopeJerkMagnitude-mean
- FrequencyBodyGyroscopeJerkMagnitude-std
- FrequencyBodyGyroscopeJerkMagnitude-meanFreq

### Notes: 
- Features are normalized and bounded within [-1,1].
- Each feature vector is a row on the text file.

For more information about this dataset contact: activityrecognition@smartlab.ws

### License:
Use of this dataset in publications must be acknowledged by referencing the following publication [1] 

[1] Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine. International Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012

This dataset is distributed AS-IS and no responsibility implied or explicit can be addressed to the authors or their institutions for its use or misuse. Any commercial use is prohibited.

Jorge L. Reyes-Ortiz, Alessandro Ghio, Luca Oneto, Davide Anguita. November 2012.

