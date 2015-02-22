// Playground - noun: a place where people can play

import UIKit

// Protocols

protocol MyProtocol
{
    var fullName : String { get set }
    var age : Int { get }
}

// Error
// Because class implement all required properties ( Must Conform)
/*
class Person : MyProtocol
{
    var fullName : String = ""
}
*/

class  Person : MyProtocol {
    var fullName : String = ""
    var age : Int = 0
}

class Person2 : MyProtocol {
    var name : String = ""
    var age : Int = 0
    var fullName : String = ""
}

var person = Person()
var person2 = Person2()


protocol SuffixProtocol
{
    var age : Int { get set }
    var fullName : String { get }
}

class Person3 :SuffixProtocol {
    
    var suffix : String? = ""
    var name : String = ""
    var age : Int = 0
    
    init(name : String, suffix : String)
    {
        self.name = name
        self.suffix = suffix
    }
    
    var fullName : String
        {
            return suffix == nil ? name : name + " " + suffix!
    }
    
}

var person3 = Person3(name: "Hasan", suffix: "Bey")
person3.age
person3.name
person3.fullName
//Error
//person3.fullName = "Ayşe Hanım" // It is not settable



// Methods in Protocols

protocol MyProtocol2
{
// Error func in protocols may not have bodies
/*
    func description()
    {
    println("Protocol Desc")
    }
*/
    func description()
}

class Student : MyProtocol2 {

    func description() {
        println("My description")
    }
}
var student = Student()
student.description()

// Has return type
protocol MyProtocol3
{
    func square () -> Int
}

class MyNumbers : MyProtocol3 {
    
    var number : Int = 0
    init (number : Int = 10)
    {
        self.number = number
    }
    
    func square() -> Int {
        return number * number
    }
}

var myNumber = MyNumbers(number: 20)
myNumber.square()
var myNumber2 = MyNumbers()
myNumber2.square()

// Mutating
protocol ToggleProtocol
{
    mutating func toggle()
}

enum Switch: Int, ToggleProtocol {

    case On, Off
    
    mutating func toggle() {
        switch self
        {
        case .On:
            self = .Off
        case .Off :
            self = .On
        }
    }
}

var mySwitch = Switch.On
mySwitch.rawValue
mySwitch.toggle()
mySwitch.rawValue

//Required 


protocol MyProtocol4
{
    init()
}

class Media: MyProtocol4 {

    var name = ""
    required init ()
    {}
}

let media = Media()
media.name = "Novel"


// Optional Methods 

@objc protocol MyProtocol5
{
    func requiredFunction()        // This is not optional, it is required function
    func myFunction()       // This is not optional, it is required function
    optional func optionalFunction()    // This is not required function
}
class Media2 : MyProtocol5
{
    var name = ""
    func myFunction() {
        
    }
    func requiredFunction() {
        
    }
}
var media2 = Media2()
















