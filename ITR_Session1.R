# this is a comment which wont run

a=5 #assigning a new variable
a # executing/printing variable

#operations on variables
a*2
a+2
a/2
#..etc

a=c(18,4,1,2,3,8) #initialize a new vector
#in a vector, all elements must be of the same type

min(a) # gets min value
max(a) # gets max value
sort(a) # increasing order by default
sort(a, decreasing = T) #explicitly setting decreasing order to T (true) 

a[2] # gets 2nd element (1-based indexing)
length(a) #returns length of vector
b=c(a[2], a[4]) #create a new vector out of elements from previous vectors
b
a[2:5] #prints elements 2 to 5
a[-2] # drops 2nd element of a
a[-c(2,4)] # drops multiple elements
a[-(5:6)] #drops 5 to 6 in a range

x= c(99,98,97,96,95,94,93) # new vector for examples
x
which(x==94) #position of element 94 in vector x
#multiple identical values will return the positions of each of those values
which(x==max(x)) #gets index of max value in x

#gets 2nd highest value in x
y=sort(x, decreasing = T)
which(x==y[2])

# accessing an element which does not exist gives 'NA' error

1:5 #prints 1 to 5
seq(1, 5) #does the same thing

seq(1, 5, by=2) #jumps 2 steps, default value by=1, prints 1,3,5

#returns eleven 1s
p=seq(1,11, by=1)
p
q=seq(1,11, by=1)
q
p/q

# does the same thing
rep(1,11)

# returns 1 1 1 5 5
b=c(rep(1,3), rep(5,2))
b
