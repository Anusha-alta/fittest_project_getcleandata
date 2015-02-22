
## setwd()
## data.table

## read features.txt
features_df <- read.table("features.txt",header=FALSE, sep="")
## read activity_label.txt
activity_df <- read.table("activity_labels.txt",header=FALSE, sep="")

## read X_test.txt
test_x_df <- read.table("test/X_test.txt",header=FALSE, sep="")

## read y_test.txt
test_y_df <- read.table("test/y_test.txt",header=FALSE, sep="")
test_y_df$activity_label <- activity_df[test_y_df[,1],2] ## assign activity label by label#



## read subject_test.txt
test_subject_df <- read.table("test/subject_test.txt",header=FALSE, sep="")

## read x_train.txt
train_x_df <- read.table("train/X_train.txt",header=FALSE, sep="")

## read y_train.txt
train_y_df <- read.table("train/y_train.txt",header=FALSE, sep="")
train_y_df$activity_label <- activity_df[train_y_df[,1],2] ## assign activity label by label#

## read subject_train.txt
train_subject_df <- read.table("train/subject_train.txt",header=FALSE, sep="")

## create vector of labels from features_df
feature_vec <- features_df[,2]
colnames(test_x_df) <- as.character(feature_vec)

## final x_test df
x_test_df <- cbind(test_y_df,test_x_df)
colnames(x_test_df)[1] <- "y_label"
x_test_df <- cbind(test_subject_df, x_test_df)
colnames(x_test_df)[1] <- "subject"
x_test_df <- cbind(test_y_df$activity_label, x_test_df)
colnames(x_test_df)[1] <- "activity_label"



## final x_train_df
colnames(train_x_df) <- as.character(feature_vec) ## labek x_train_df columns

x_train_df <- cbind(train_y_df, train_x_df) 
colnames(x_test_df)[1] <- "y_label"
x_train_df <- cbind(x_subject_df, x_train_df)
colnames(x_train_df)[1] <- "subject"
x_train_df <- cbind(train_y_df[,"activity_label"], x_train_df)
colnames(x_train_df)[1] <- "activity_label"

## merge test and train datasets
fittest_df <- rbind(x_test_df, x_train_df)

## extract mean data
fittest_mean <- fittest_df[,grep("mean\\(\\)", colnames(fittest_df), ignore.case = TRUE)  ]

## extract std data 
fittest_std <- fittest_df[,grep("std", colnames(fittest_df), ignoredf.case = TRUE)  ]

##combine subject, y_label, fittest_mean and fittest_std
fittest_mean_std <- cbind(fittest_df$subject, fittest_df$activity_label, fittest_mean, fittest_std)

## descriptive labels for all variables
## remove ()
colnames(fittest_mean_std) <- gsub("\\(||)","",colnames(fittest_mean_std))
colnames(fittest_mean_std) <- gsub("tBody","Time.Body",colnames(fittest_mean_std))
colnames(fittest_mean_std) <- gsub("tGravity","Time.Gravity",colnames(fittest_mean_std))
colnames(fittest_mean_std) <- gsub("fBody","Frequency.Body",colnames(fittest_mean_std))

## making tidy data
fittest_melt <- melt(fittest_mean_std, id = c("Subject", "Activity.Label"), measure.vars=c(3,68))

fittest.avg.narrow <- ddply(fittest_melt,  .(Activity.Label,Subject,variable), summarize, mean = mean(value))
fittest.avg.wide <- dcast(fittest.avg.narrow, Activity.Label ~ variable, value.var = "mean")
