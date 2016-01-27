
# install required packages if not installed and loaded
if (!require("data.table")) {
  install.packages("data.table")
}

if (!require("reshape2")) {
  install.packages("reshape2")
}

require("data.table")
require("reshape2")


# load activity labels
activity_labels<- read.table("C:/Users/Balakrishnan/Downloads/getdata-projectfiles-UCI HAR Dataset/UCI HAR Dataset/activity_labels.txt")[,2]

# load features
features <- read.table("C:/Users/Balakrishnan/Downloads/getdata-projectfiles-UCI HAR Dataset/UCI HAR Dataset/features.txt")[,2]

# extract mean and standard deviations from features
mean_stdev <- grep("mean|std",features)

# load test data sets
x_test <- read.table("C:/Users/Balakrishnan/Downloads/getdata-projectfiles-UCI HAR Dataset/UCI HAR Dataset/test/x_test.txt")
y_test <- read.table("C:/Users/Balakrishnan/Downloads/getdata-projectfiles-UCI HAR Dataset/UCI HAR Dataset/test/y_test.txt")
subject_test <-read.table("C:/Users/Balakrishnan/Downloads/getdata-projectfiles-UCI HAR Dataset/UCI HAR Dataset/test/subject_test.txt")

# name features
names(x_test)=features

# extract only mean and standard deviation values from x_test
x_test = x_test[,mean_stdev]

# add activity labels to y_test and name columns
y_test[,2]=activity_labels[y_test[,1]]
names(y_test) = c("Activity_ID", "Activity_Label")
names(subject_test) = "subject"

# join activity data with subject and measurements
test_data <- cbind(as.data.table(subject_test), y_test, x_test)


# repeat entire process for training data set
activity_labels<- read.table("C:/Users/Balakrishnan/Downloads/getdata-projectfiles-UCI HAR Dataset/UCI HAR Dataset/activity_labels.txt")[,2]
features <- read.table("C:/Users/Balakrishnan/Downloads/getdata-projectfiles-UCI HAR Dataset/UCI HAR Dataset/features.txt")[,2]

mean_stdev <- grep("mean|std",features)

x_train <- read.table("C:/Users/Balakrishnan/Downloads/getdata-projectfiles-UCI HAR Dataset/UCI HAR Dataset/train/x_train.txt")
y_train <- read.table("C:/Users/Balakrishnan/Downloads/getdata-projectfiles-UCI HAR Dataset/UCI HAR Dataset/train/y_train.txt")
subject_train <-read.table("C:/Users/Balakrishnan/Downloads/getdata-projectfiles-UCI HAR Dataset/UCI HAR Dataset/train/subject_train.txt")

names(x_train)=features
x_train = x_train[,mean_stdev]

y_train[,2]=activity_labels[y_train[,1]]
names(y_train) = c("Activity_ID", "Activity_Label")
names(subject_train) = "subject"
train_data <- cbind(as.data.table(subject_train), y_train, x_train)


# combine training and test data sets
data = rbind(test_data, train_data)

# melt the entire data set so that the means can be calculated later on
melted_data      = melt(data, id = c("subject", "Activity_ID", "Activity_Label"), measure.vars = colnames(data[,4:ncol(data)]))

# cast the data back to short format using subject and ativity label as the ID with the value being the mean
tidy_data   = dcast(melted_data, subject + Activity_Label ~ variable,fun.aggregate= mean)

# save tidy dataset
write.table(tidy_data,"C:/Users/Balakrishnan/Downloads/getdata-projectfiles-UCI HAR Dataset/UCI HAR Dataset/tidy_data.txt")
