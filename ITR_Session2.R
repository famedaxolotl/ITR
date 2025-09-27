#MATRICES

#initializing a matrix (3R, 2C)
#elements are positioned column-wise by default
a=matrix((1:6), nrow=3, ncol=2)
a

#matrix with elements positioned row-wise
a=matrix(seq(1:6), nrow=3, ncol=2, byrow = T)
a
#extracts 1st column
a[,1]
#extracts 1st row
a[1,]
#extracts element at 2nd row, 2nd column
a[2,2]

#binds given vector row to bottom a
rbind(a, c(10,11))
#adds to top row instead
rbind(c(10,11),a)

#binds colummn to end of a
cbind(a, c(4,2,1))

#new vector for examples
b=matrix(seq(1:6), nrow=3, ncol=2, byrow = T)
b=cbind(b, c(4,2,1))
b
is.vector(b[2,]) #TRUE
is.vector(b) #FALSE

nrow(b) #get rows of b
ncol(b) #get rows of b
b

#transpose b (assigned to c)
c=t(b)
c

c=cbind(c, c(2,5,1))

c#assign column names to maxtrix c
colnames(c)=c("Aragorn", "Gil-Galad", "Melkor", "Smeagol")
rownames(c)=c("History", "Geography", "Lore")
c

#Use quotations when printing a named column
c[,"Aragorn"]

#convert matrix c to dataframe
c_df=as.data.frame(c)

#get columns easily
c_df$Aragorn

#assign row names using dataframe syntax
#same as ln43 for matrix
row.names(c_df)=c("History", "Geography", "Lore")
c_df
is.data.frame(c_df) #TRUE

#transposing data-frame reverts it to matrix
c_df_T=t(c_df)

is.data.frame(c_df_T) #FALSE

#Solution to the matrix problem
a_1=matrix(c(1,4,10,11), nrow=2,ncol=2, byrow = T)
a_2=matrix(c(2,5,3,6), nrow=2,ncol=2, byrow = T)
a_1
a_2
rbind(a_1, a_2)

#END OF MATRICES

#IF STATEMENTS
a=5

if(a>6)
{
  b=1
}else{
  b=0
}

a=5
print(b) # will print 0

#range=[1,3)
if(1<=a & a<3)
{
  b=0
  #range=[3,6)
}else if(3<=a & a<6)
{
  b=1
}else
{
  b=2
}

b

#Homework: check if number 'a' is even or odd
# '%%' is the modulus operator

num=6
if (num %%2 ==0){
  print("even")
}else{
  print("odd")
}
