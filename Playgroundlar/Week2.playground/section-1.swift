// Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"
var myInteger:Int = 4
var myInteger2 = 4
var myArray = []
var myArray2 :Array = ["hey"]
//MY comment
/* 
My Comment 2
Line 2
*/
let myArray3 = [3]
var myArray4 = [3]
myArray4.append(5)
var myDict = [:]
myDict = ["myKey": "myValue"]
myDict["myKey"]
let myDict2:Dictionary = [2: "Value"]
myDict2[2]

//Error
//var myUInt :UInt = -100
var myInteger4 = -400
var myFloat2 = -400.0
var myUInt2: UInt = 3

//Error
//var myIntegerAndFloat = myInteger4 + 4.5

var myIntegerAndFloat2 = Float(myInteger4) + 4.5

//TypeAlias Sample
typealias MyInteger = Int
var myInt : MyInteger = 3

var myBoolean = true
var  myBool2:Bool
myBool2 = false

//Tuples

var (var1, var2) = ("var1-Value", 4)
var1
var2

var httpErrorCode = (404, "Not Found")
httpErrorCode.0
httpErrorCode.1

var (code, message) = httpErrorCode
code
message


var myCities = [(34, "İstanbul"), (35, "İzmir")]
//Error
//var (myTrafficCode, myCityName) = myCities.first
var (myTrafficCode, myCityName) = myCities.first!
myTrafficCode

//OPTIONALS

let possibleNumber = "123"
let convertedNumber = possibleNumber.toInt()

var myPossibleNumber2 = "-"
var convertedNumber2 = myPossibleNumber2.toInt()

//Error
//var convertedNumber3! = myPossibleNumber2.toInt()

var myOptionalInt : Int? = 7
myOptionalInt = nil

//Error
//var myOptionalArray : Array? = []
var myOptionalArray2 : Array<String>? = []
myOptionalArray2 = nil
var myArray5 : Array<Int> = []
myArray5.append(4)
myArray5.append(5)
myArray5

//IF Statements

var myBoolean2 = true

if myBoolean2
{
    println("TRUE")
}
else
{
    println("FALSE")
}

if !myBoolean2
{
    println("TRUE")
}
else
{
    println("FALSE")
}


var myInteger5 = 8
if myInteger5 == 8
{
    println("YES")
}

if myOptionalArray2 != nil
{
    println("Not nil")
}
else
{
    println("It is nil")
}


//BREAK NOW

let myScore = 60

if myScore >= 80 && myScore <= 100
{
    println("A")
}
else if myScore >= 60
{
    println("B")
}
else if myScore >= 40
{
    println("C")
}
else
{
    println("F")
}

// IF - LET

let myString : String? = "Hasan"

if let myValue = myString
{
    println("Hey \(myValue)")
}


let myScore2 :String? = "76"

if let score = myScore2?.toInt(){
    println("Your score is \(score)")
}
else
{
    println("You are not scored")
}

//Sample 2
let myScore3 :String? = "7-"
if let score = myScore3?.toInt(){
    println("Your score is \(score)")
}
else
{
    println("You are not scored")
}

//OPERATORS
// =
var myString2 = "2"
var myString3 : String
myString3 = myString2
myString3

// + 

var myFloat3 = 5.4
myFloat3 += 4.3 // myFloat3 = myFloat3 + 4.3

myFloat3 = myFloat2 + 3.0

// - 

myFloat3 = 4.8 - 3.2
myFloat3  -= 1.4  //myFloat3 = myFloat3 - 1.4

// *

myFloat3 = 4 * 5
myFloat3 *= 5

// /

myFloat3 = 100 / 3
myFloat3 /= 2

var myTwoString = "Hello, " + "Hasan"

// % (MOD)
myInteger5
myInteger5 % 3
myInteger5 = -18
myInteger5 % 4
myFloat3 = 55.4
myFloat3 % 5.25

// ++ 

myInteger5
var myInteger6 = myInteger5++
myInteger6
myInteger5
myInteger6 = ++myInteger5
myInteger6

// --
myInteger6--
--myInteger6

// += 

var myInteger7 = 9
myInteger7 += 2

// -=

var myInteger8 = 19
myInteger8 -= 4


// == 

var myBoolean3 = myInteger8 == myInteger7

// AÇILIM
var myBoolean4 :Bool
if myInteger8 == myInteger7
{
    myBoolean4 = true
}
else
{
    myBoolean4 = false
}

// !=
var myBoolean5 = myInteger8 != myInteger7
// AÇILIM
var myBoolean6 :Bool
if myInteger8 != myInteger7
{
    myBoolean6 = true
}
else
{
    myBoolean6 = false
}


// ?:

myBoolean6
var myName = myBoolean6 ? "Hasan" : "Ayşe"
//AÇILIM

var myName2:String
if myBoolean6 {
    myName2 = "Hasan"
}
else
{
    myName2 = "Ayşe"
}

myInteger7
myInteger8

var status = myInteger7 < myInteger8 ? "Yes" : "No"


// FOR LOOP
myArray2
myArray2.append("Hasan")
for each in myArray2
{
    println("You are \(each)")
}

//FOR LOOP WITH ...

for index in 1...10{
    println("\(index)")
}
myInteger7 = 100
for index in 1..<myInteger7 {
    println("\(index)")
}



// LOGICAL OPERATORS
//&&
myScore
if myScore > 50 && myScore < 70
{
    println("Between 50 and 60")
}


// ||

if myScore > 100 || myScore < 70
{
    println("Ya 100 'den büyük , Ya da 70'ten küçük")
}















