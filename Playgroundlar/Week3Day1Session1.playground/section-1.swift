// Playground - noun: a place where people can play

import UIKit



// CLOSURES


var myArray:Array<Int> = [4, 5,3, 7,1,9]
myArray.sort { (number1, number2) -> Bool in
    var myStatus = number1 < number2
    return myStatus
}

myArray.sort { (n1, n2) -> Bool in
    n1 > n2
}



////// MY CUSTOM CLOSURES

func myFoo (closure : ()-> ())
{
    println("1")
    println("2")
    closure()
}

myFoo { () -> () in
    println("3")
}


func myFoo2 (closure : ()-> ())
{
    println("1")
    closure()
    println("2")
}


myFoo2 { () -> () in
    println("3")
    println("4")
}


func addTwoNumber(number1: Double, #number2: Double, closure:()->())
{
    var mySum = number1 + number2
    println("Two numbers is about to added")
    closure()
    println("Two numbers is added")
}

addTwoNumber(3, number2: 4) { () -> () in
    println("Hey code is finished")
}

func addTwoNumbers(number1 : Int, #number2 : Int, myClosure: (s:Int) -> ())
{
    var mySum = number1 + number2
    myClosure(s: mySum)
}
addTwoNumbers(439, number2: 3942) { (s) -> () in
    println("My sum \(s)")
}


// Count Down 

func countDownFrom(number : Int , closure :()->())
{
    for each in 0...number-1
    {
        println( "\(number - each)" )
    }
    closure()
}
countDownFrom(10, { () -> () in
    println("Merry Christmas")
})


func sayHappyBirthdayTo(name: String, #countFrom : Int, closure : (name:String)->())
{
    for each in 0...countFrom-1
    {
        println( "\(countFrom - each)" )
    }
    closure(name: name)
}

sayHappyBirthdayTo("Hasan", countFrom: 3) { (name) -> () in
    println("Happy Birthday to you, \(name)")
}












