// Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"


var myArray : Array<String> = []
myArray.append("Ayşe")
myArray.count
myArray.append("Hasan")
myArray.insert("Mehmet", atIndex: 0)
myArray.insert("Ali", atIndex: 2)
myArray[3]
//Error
//myArray[4]
myArray[3]  = "Veli"
myArray
myArray[0...1] = ["Derya", "Deniz"]
myArray
myArray[1...2] = ["Yağmur","Su"]
myArray
myArray.removeLast()
myArray
var removedString = myArray.removeAtIndex(1)
removedString
myArray.append(removedString)
myArray.removeRange(0...1)

// += 

myArray += ["Irmak", "Mehmet"]

var isEmpty = myArray.isEmpty

var myArray2 = [Int]()
var myArray3 = [Int](count: 4, repeatedValue: 5)
var myArray4 = [Float]()
myArray4.append(3.4)



//DICTIONARY

//Error
//var myDict : Dictionary = [:]
var myDict : Dictionary = ["Name":"Hasan"]
var myDict2 = [ 3 : [2, 6, 9, 12] , 4 : [4, 8, 12, 16, 20], 5 : "Beş", "MyNumber": 78]


myDict2[3]
myDict2.objectForKey(7)
myDict2.objectForKey(3)
myDict2.objectForKey("MyNumber")
myDict2["MyNumber"]

myDict.count
myDict.updateValue("Mehmet", forKey: "Name")
myDict

myDict["Name"] = "Veli"
myDict

var myNameAndSurname : Dictionary = ["name":"Hasan", "surname": "Soysal"]
var name = myNameAndSurname["name"]
name
var surname = myNameAndSurname["surname"]

println("Hello, \(name) \(surname)")
//println("Hello, \(myNameAndSurname[\"name\"])")

for key in myNameAndSurname.keys
{
    var myValue = myNameAndSurname[key]
    println("Hey the value is : \(myValue)")
    println("Hey the key is : \(key)")
}

for value in myNameAndSurname.values
{
    println("Hey the value is : \(value)")
}

for (key, value) in myNameAndSurname
{
    println( "The key is \(key)")
    println( "The value is \(value)")
}















