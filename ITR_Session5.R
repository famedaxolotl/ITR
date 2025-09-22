#IMPORTING AUDIT DATA
#PUT YOUR WHOLE FILE PATH HERE
#KEEP HEADER FALSE ONLY IF YOUR DATA HAS NO HEADER
a=read.csv("C:/Users/risha/OneDrive/Documents/ITR/AUDIT.csv", header=F)
a

#we will later use the V1 column of the data, which will be a vector
is.vector(a$V1)#TRUE

# I have used a single column for the data, and used row-names for the bands.
# creating a 2nd column for the bands also works
#to do that, simply change ncol to 2 and assign the strings to the [,1] column
a_mat=matrix(0, nrow = 5, ncol=1)
a_mat
rownames(a_mat)=c("10-14", "15-19", "20-24", "24-29", "30-34")
a_mat
colnames(a_mat)=c("Audit Time")
a_mat
for (i in 1:length(a$V1)){
  if ( a[i, "V1"]>= 10 && a[i, "V1"]<=14){
    #[i, V1] refers to the i-th row in the V1 column
    a_mat[1,1]=a_mat[1,1]+1
  }else if ( a[i, "V1"]>= 15 && a[i, "V1"]<=19){
    a_mat[2,1]=a_mat[2,1]+1
  }else if ( a[i, "V1"]>= 20 && a[i, "V1"]<=24){
    a_mat[3,1]=a_mat[3,1]+1
  }else if ( a[i, "V1"]>= 25 && a[i, "V1"]<=29){
    a_mat[4,1]=a_mat[4,1]+1
  }else if ( a[i, "V1"]>= 30 && a[i, "V1"]<=34){
    a_mat[5,1]=a_mat[5,1]+1
  }
}

#this gives output:

#      Audit Time
# 10-14          4
# 15-19          8
# 20-24          5
# 24-29          2
# 30-34          1

a_mat
#plot data into a dot-chart
dotchart(a$V1)

#STRIPCHART
#the 'stack' method ensures each repetition is also displayed.
#if not stacked, only singular data-points will be plotted
#the 'pch' is code for shape of datapoint. for example, 17 gives triangle
#offset spaces the stacked symbols
#col is colour (duh)
stripchart(a$V1, method="stack", offset=1, col="pink", pch=17)

#FINDING MEDIAN
#sort the first column of audit data in increasing order
a_srt=sort(a$V1)
a_srt
median=0
if (length(a_srt)%%2==0){
  median=a_srt[(length(a_srt)+1)/2]
}else {
  #i have used an else case for simplicity. A more robust implementation is up to you
  median = 0.5 * ( a_srt[length(a_srt)/2] + a_srt[(length(a_srt)/2)+1])
}

median
