// Playground - noun: a place where people can play

import UIKit

var someInts = [0,1,2,3]
someInts.append(4)

var someIntsCopy = someInts

someIntsCopy.removeLast()

someInts
someIntsCopy
//Arrays are structs

someInts.insert(1, atIndex:1)

//var f:Int = someInts.length


for (index, someInt) in enumerate(someInts) {
    println("sdf")    ///????
}



var names = ["rudd", "sean", "travis"]

for name in names {
    println(name)

}


func printFiveTimes (string: String)
{
    for i in 0..<5 {
        println(string)
    }
}

printFiveTimes("sdf")

