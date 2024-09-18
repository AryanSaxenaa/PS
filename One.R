#Q1
num1=c(5,10,15,20,25,30)
print(paste('Minimum number in vector is',min(num1)))
print(paste('Minimum number in vector is',max(num1)))

#Q2
num2<-as.integer(readline(prompt = 'Enter a number'))
# Initialize factorial variable
factorial <- 1
# Check for negative numbers or zero
if (num2 < 0) {
  print('Factorial does not exist')
} else if (num2 == 0) {
  print('Factorial of 0 is 1')
} else {
  for (i in 1:num2) {
    factorial <- factorial * i
  }
  print(paste('Factorial is', factorial))
}

#Q3
num3=as.integer(readline(prompt = 'Enter the integer'))
n1=0
n2=1
count=2
if(num3<=0){
  print('Please enter a positive number')
}else if(num3==1){
  print('Fibonacci sequence is: ')
  print(n1)
 }else{
    print('Fibonacci Series: ')
    print(n1)
    print(n2)
    while(count<num3){
      nth=(n1+n2)
      print(nth)
      n1=n2;
      n2=nth
      count=count+1
  }
}


#Q4
add<-function(x,y){
  return (x+y)
}
subtract<-function(x,y){
  return (x-y)
}
multiply<-function(x,y){
  return (x*y)
}
divide<-function(x,y){
  return (x/y)
}
number1=as.integer(readline(prompt = 'Enter number 1'))
number2=as.integer(readline(prompt = 'Enter number 2'))
print(add(number1,number2))

#result <- switch(choice,add(number1,number2),subtract(number1,number2))


#Q5
# Data for bar plot
values <- c(3, 7, 9, 14)
categories <- c("Category A", "Category B", "Category C", "Category D")

# Bar plot
barplot(values, names.arg = categories, col = "lightblue", main = "Bar Plot Example", xlab = "Categories", ylab = "Values")
