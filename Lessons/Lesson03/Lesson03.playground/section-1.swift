// Lesson 03 playground

import Foundation

// TODO: Create two variables, name and age. Name is a string, age is an integer.

var name = "matt"
var age = 20





// TODO: Print "Hello {whatever the value of name is}, you are {whatever the value of age is} years old!"

println("Hello \(name) you are \(age)")



// TODO: Print “You can drink” below the above text if the user is above 21. If they are above 18, print “you can vote”. If they are above 16, print “You can drive”

var drink = "you can drink"

var vote = "you can vote"

var drive = "you can drive"


if age >= 21{
println(drink)
}
else if age >= 18{
println(vote)
}
else if age >= 16{
println (drive)
}else {println(" you are a child, chile!")
}



// TODO: Print “you can drive” if the user is above 16 but below 18. It should print “You can drive and vote” if the user is above 18 but below 21. If the user is above 21, it should print “you can drive, vote and drink (but not at the same time!”.


if age >= 16 && age < 18 {
    println(drive)
}
else if age>=18 && age<21{
println("\(vote) and \(drive)")
}
else if age>21{
    println("you can drive, vote, and drink (but not at the same time")
}



// TODO: Print the first fifty multiples of seven minus one (e.g. the first three multiples are 7, 14, 21. The first three multiples minus one are 6, 13, 20)

for index in 0...50 {
    println(index)
}





for var x = 1; x < 51; x=x+1
{
    
    var n=((7-1) * x)
    println(n)
    
}


for index in 0...49{
    var n = ((7-1) * index)
println(n)
}



    
    

// TODO: Create a constant called number


let number = 2


// TODO: Print whether the above number is even

if (number % 2) == 2 {
    println("number is even")
}






// TODO: The first fibonacci number is 0, the second is 1, the third is 1, the fourth is two, the fifth is 3, the sixth is 5, etc. The Xth fibonacci number is the sum of the X-1th fibonacci number and the X-2th fibonacci number. Print the 37th fibonacci number below





// TODO: Print out "Hello {whatever the value of name is}, your name is {however long the string name is} characters long!. Use countElements()

// TODO: Print the sum of one hundred random numbers. Use rand() to generate random numbers.










