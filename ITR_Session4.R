#primary data: data obtained directly from field of inquiry
#pros: accuracy and targeted collection
#cons: may contain statistical anomalies (unrefined)

#secondary data: obtaining data collected by another party.
  #categorical data: data sorted into categories
  #numerical data: buncha numbers

#PLEASE PUT THE CSV FILE IN THE SAME FOLDER AS THIS FILE
#OTHERWISE THE PATH "Websites" WILL NOT WORK

#reading a csv file
#setting header to false avoids the first data being set as header name
a=read.csv("Website.csv", header = F)
#returns the number of unique data items
#because V1 is the column name (recall data-frames)
unique(a$V1)

#creating an empty matrix with a blank 1st column for names
#with rows equal to unique number of data points (see line 15)
a_mat=matrix(0, nrow = length(unique(a$V1)), ncol=2)

for (i in 1:50){
  #check if i-th row in the V1 column is "YAH"
  if (a[i, "V1"]=="YAH"){ #can also use a$V1[i]
    #if yes, increment the count of (row1, column2) by 1
    a_mat[1,2]=a_mat[1,2]+1
  }else if (a[i, "V1"]=="FB"){
    a_mat[2,2]=a_mat[2,2]+1
  }else if (a[i, "V1"]=="YT"){
    a_mat[3,2]=a_mat[3,2]+1
  }else if (a[i, "V1"]=="GOOG"){
    a_mat[4,2]=a_mat[4,2]+1
  }else if(a[i, "V1"]=="WIKI"){
    a_mat[5,2]=a_mat[5,2]+1
  }
}

#name the columns of data
colnames(a_mat)=c("Website", "Frequency")
#name each website entry
a_mat[,1]=c("YAH", "FB", "YT", "GOOG", "WIKI")
a_mat

#at this point, you should get the result:
# Website Frequency
# [1,] "YAH"   "13"     
# [2,] "FB"    "7"      
# [3,] "YT"    "7"      
# [4,] "GOOG"  "14"     
# [5,] "WIKI"  "9"

#Converting to data-frame removes the double-quotes
a_df=as.data.frame(a_mat)
a_df

is.numeric(a_df$Frequency) # FALSE because data-frame is non-numeric
is.numeric(as.numeric(a_df$Frequency)) #use as.numeric() to convert the data to numeric

#BARPLOT
#create barplot from data, with the frequncies on y-axis and names as arguments
#NOTE: use as.numeric() for the frequencies
barplot(as.numeric(a_df$Frequency), names.arg = a_df$Website, col="aquamarine", main="Websites Visited")
#Homework: order these plots according to frequency

#PIE-CHART
pie(as.numeric(a_df$Frequency), a_df$Website)
