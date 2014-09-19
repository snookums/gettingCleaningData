## course project R code


prepData <- function(actlist, hdrlist, data) {
  
  # 'data' is a parameter that defines either test or train data
  
  # set the file path
  # concatenate the path and data dir
  path <- paste("./UCI HAR Dataset", data, sep="/") 
  
  # read in data (test or train; has no header info)
  #xfile <- "./UCI HAR Dataset/test/X_test.txt" 
  file <- paste("X_", data, ".txt", sep="")
  xfile <- paste(path, file, sep="/")
  xdat <- read.table(xfile, header=F, sep="", stringsAsFactors=F)
   
  # read in activity list
  #yfile <- "./UCI HAR Dataset/test/y_test.txt"
  file <- paste("y_", data, ".txt", sep="")
  yfile <- paste(path, file, sep="/")
  ydat <- read.table(yfile, header=F, sep="", stringsAsFactors=F)
  
  # read in subject file (ID the test subject)
  #subfile <- "./UCI HAR Dataset/test/subject_test.txt"
  file <- paste("subject_", data, ".txt", sep="")
  subfile <- paste(path, file, sep="/")
  subject <- read.table(subfile, header=F, sep="", stringsAsFactors=F)
  
  # change column names that ID the actual data measurement name
  colnames(xdat) <- hdrlist
  
  # add column of user activity as 1st column of zdat data set
  zdat <- cbind(ydat, xdat)
  
  # make V1 column a factor
  zdat$V1 <- factor(zdat$V1)
  
  # change V1 column name to 'activity'
  names(zdat)[1] <- "activity"
  
  # assign activity labels to each of the 6 possible factors
  levels(zdat$activity) <- actlist
  
  # add another column of user activity as 1st column of zdat data set
  zdat <- cbind(subject, zdat)
  
  # change V1 column name to 'subject'
  names(zdat)[1] <- "subject"
  
  # subset the data to include only the mean() and std() columns
  # NOTE: need to double-up backslash char to use as escape chars (take char as literal)
  
  data <- select(zdat, subject, activity, grep("mean\\(\\)|std\\(\\)", names(zdat)))
  
  return(data)
  
}


# main script starts here
#==========================

library(dplyr)

# read in activity labels file (will be used to ID user activity)
actfile <- "./UCI HAR Dataset/activity_labels.txt"
act <- read.table(actfile, header=F, sep=" ", stringsAsFactors=F)
actlist <- act$V2

# read in header data (will be column names for data set)
hdrfile <- "./UCI HAR Dataset/features.txt"
hdr <- read.table(hdrfile, header=F, sep="", stringsAsFactors=F)

# make a list of the 2nd column of hdrfile
# (this is where the column names are found)
hdrlist <- hdr$V2

print("=> prepping test data...")
z1 <- prepData(actlist, hdrlist, data="test")
#names(z1)

print("=> prepping train data...")
z2 <- prepData(actlist, hdrlist, data="train")
#names(z2)

# combine both test and train data sets into one big data set
z12 <- rbind(z1, z2)
d <- dim(z12)
print("z12 dimensions: ")
print(d)

print("removing individual test and train datasets...")
rm(z1)
rm(z2)

print("performing step #5...")
df <- data.frame(z12) #make copy of combo dataset
# didn't update df after performing manipulations...why?
#df %>% group_by(subject) %>% summarise_each(funs(mean))

df <- group_by(df, subject, activity)
df <- summarise_each(df, funs(mean))
print("new 'condensed' data set dimensions:")
dim(df)

#write out the new data frame to a file
write.table(df,"./projectTidyData.txt", row.name=FALSE)
