# MY SOLUTIONS
# Q1

# eng, math, and science marks
marks=c(80,0,20)
avg=(marks[1] + marks[2] + marks[3])/3

if (avg>=80)
{
  print("distinction")
}else if(avg>=60 & avg<80){
  print("Merit")
}else if(avg>=40 & avg<60){
  print("Pass")
}else{
  print("Fail")
}


# Q2
des="National"
w=10
charge=0

if (des=="Local")
{
  if(w<= 2){
    charge=5
  }else if(w>2 & w<=5){
    charge=10
  }else if(w>5){
    charge=15
  }
}else if(des=="Regional"){
  if(w<= 2){
    charge=10
  }else if(w>2 & w<=5){
    charge=20
  }else if(w>5){
    charge=30
  }
}else if (des=="National"){
  if(w<= 2){
    charge=20
  }else if(w>2 & w<=5){
    charge=30
  }else if(w>5){
    charge=40
  }
}else{
  print("Invalid Destination")
}

print(paste0("$", charge))

# END OF PROBLEMS

#FOR LOOPS
a=c(78,9,4,56)

#in for loops, i represents the iterator
#any other keyword is valid as well
for(i in 1:length(a))
{
  print(a[i])
}

#prints only the even values of a
for(i in 1:length(a))
{
  if (a[i]%%2==0){
    print(a[i])
  }
}

# factorial of number using for loop (my solution)
num=5
fact=1

for (i in 1:num){
  fact = fact * num
  num = num -1
}

print(fact)
