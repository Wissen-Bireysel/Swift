// Playground - noun: a place where people can play

import UIKit

// ENUM

enum Directions
{
    case South
    case North
    case East
    case West
}

enum Gender
{
    case Male, Female, Other
}

var myEnum = Directions.South
myEnum

var myEnum2 : Directions? = nil
myEnum2 = Directions.West
myEnum2 = .East

var myEnum3 : Gender = .Male
myEnum3 = Gender.Other
switch myEnum3
{
case .Male :
    println("Male")
case .Female:
    println("Female")
default:
    println("Other")
}


enum Directions2
{
    case South(Float) // Angle
    case North (Float) // // Angle
}

var myDirection = Directions2.North(45)
myDirection = .South(30)

//myDirection.rawValue
var myDirection2: Directions = Directions.West

myDirection2.hashValue


// ENUM with TYPE

enum Directions3: Int
{
    case South = 8
    case North
    case East
    case West
}


var myDirection3 :Directions3 = .East
myDirection3.rawValue


// Planets 

enum Planets : Int
{
    case Earth
    case Venus
    case Uranus
    case Jupiter
    case Mars
}

var myPlanet  = Planets(rawValue: 100)
myPlanet = Planets(rawValue: 3)
myPlanet?.rawValue



// CLASSES 

// Inherits from UIView
class MyClass: UIView {
    
}

class MyClass2 {
    var myName : String? = ""
}

var myClassVariable = MyClass2()
myClassVariable.myName
myClassVariable.myName = "Hasan"
myClassVariable.myName

let myClassConstant = MyClass2()        // class is a constant variable now
myClassConstant.myName = "Ayşe"         // But its myName variable is not constant

class MyClass3 {
    let name : String = "Class Name 3"
}

var myClass3Variable = MyClass3()       // class is a variable now
//myClass3Variable.name = "Heyy"          // But ist name variable is a constant and you cannot change it



// Init 


class Person {
    var name = ""
    var age = 0


    init (name : String, age: Int)
    {
        self.name = name
        self.age = age
    }
}


var me = Person(name: "Hasan", age: 27)
me.age



// Second Init 


class Person2 {
    var name = ""
    var age = 0
    
    init (name : String, age: Int)
    {
        self.name = name
        self.age = age
    }
    
    init(name : String)
    {
        self.name = name
    }
    
    init ()
    {}
    
    
}


var me2 = Person2(name: "Hasan", age: 39)
me2.age
me2 = Person2(name: "Mehmet")
me2.age




























