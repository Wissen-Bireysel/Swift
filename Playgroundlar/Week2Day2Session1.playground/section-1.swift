// Playground - noun: a place where people can play

import UIKit

//FOR LOOPS
//For in
for each in 1...100{
    println("\(each)")
}

for each in 1...100
{
    println("Hasan")
}

for _ in 1...100
{
    println("Hasan")
}


// Classic For Loop

for var myIndex = 0; myIndex < 100 ; myIndex++
{
    println("\(myIndex)")
}

//For-in enumeration
var myArray = [1,2,3,4,5]
for each in enumerate(myArray)
{
    println("\(each)")
}

for var index = 5; index < 10; index+=2
{
    println("\(index)")
}

//WHILE


var myInteger = 5

while myInteger < 10
{
    println("Hello")
    myInteger++
}


var myInteger2 = 1
while myInteger2 != 0
{
    myInteger2++
    myInteger2 %= 5
    println("\(myInteger2)")
}


//SWITCH

var myCharacter : Character = "t"

switch myCharacter
{
    case "a", "e", "i","ı", "o","ö","u","ü":
        println("Sesli Harf")
    default:
        println("Sessiz Harf")
}

//Switch with Range
var score = 50.4
switch score
{
case 80...100:
    println("A")
case 60...80:
    println("B")
case 40...60:
    println("C")
default:
    println("F")
}

//switch with tupple

var myPoint = (3,4)
myPoint.0
myPoint.1

switch myPoint
{
case (0 , 0):
    println("This point is on origin")
case (_, 0):
    println("This point is on y-axis")
case (0, _):
    println("This point is on x-axis")
case (-2...2, -2...2):
    println("This point is in 4x4 square originated 0.0")
default:
    println("This point is not on x or y axis. This point is x:\(myPoint.0), y:\(myPoint.1)")
}


var myPoint2 = (3, 0)
switch myPoint2
{
case (let x, 0):
    println("\(x)")
case (0, let y):
    println("\(y)")
    
default:
    println("This point is not on x or y axis. This point is x:\(myPoint2.0), y:\(myPoint2.1)")

}


//switch with where keyword

var myPoint3 = (4, 4)

switch myPoint3
{
case let (x, y) where x == y:
    println("x = y")
case let (x, y) where x == -y:
    println("x = -y")
case let (x, y):
    println("x =\(x), y = \(y)")
    
}


//Transfer

// continue, break, fallthrough, return




















