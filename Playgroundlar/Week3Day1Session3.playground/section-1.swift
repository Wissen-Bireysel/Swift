// Playground - noun: a place where people can play

import UIKit


// Classes and Struct continued


class Person {
    var name = ""
    var age = 0
    
    init(name: String, age : Int)
    {
        self.name = name
        self.age = age
    }
}

var myClass = Person(name: "Hasan", age: 28)
var myClass2 = myClass
myClass2.name
myClass.name = "Ayşe"
myClass2.name

struct Person2 {
    var name = ""
    var age = 0
    init (name: String ,  age : Int)
    {
        self.name = name
        self.age = age
    }
}

var myStruct = Person2(name: "Hasan", age: 28)
var myStruct2 = myStruct
myStruct2.name
myStruct.name = "Ayşe"
myStruct2.name


class MyPoint {
    var x = 0.0
    var y = 0.0
    
    init(x : Double , y: Double)
    {
        self.x = x
        self.y = y
    }
    init(){}
}

class MySize {
    var width = 0.0
    var height = 0.0
    
    init(w : Double, h : Double)
    {
        self.width = w
        self.height = h
    }
    init(){}
}


class MyRect
{
    var origin = MyPoint()
    var size  = MySize()
    var center : MyPoint
        {
        get {
            let centerX = origin.x + (size.width / 2)
            let centerY = origin.y + (size.height / 2)
            return MyPoint(x: centerX, y: centerY)
        }
        set(newCenter)
        {
            origin.x = newCenter.x - (size.width / 2)
            origin.y = newCenter.y - (size.height / 2)
        }
    }
    
    
    init(origin: MyPoint, size: MySize)
    {
        self.origin = origin
        self.size = size
    }
    
    func changeMyOrigin (x : Double, y: Double) -> MyPoint
    {
        self.origin.x = x
        self.origin.y = y
        return center
    }
}


var myRectClass = MyRect(origin: MyPoint(x: 2, y: 2), size: MySize(w: 10, h: 10))

myRectClass.origin
myRectClass.size
myRectClass.center

myRectClass.center = MyPoint(x: 40, y: 2)
myRectClass.origin

myRectClass.size
var myNewCenter = myRectClass.changeMyOrigin(100, y: 100)
myNewCenter






// INHERITANCE

class  Person3  {
    var name  = ""
    var age = 0
    var jobTitle = ""
    
    init(){}
    init(name : String , age: Int)
    {
        self.name = name
        self.age = age
    }
    func myDescription ()
    {
        println ("My job title is \(jobTitle)")
    }
    
}

class Manager: Person3 {

    
    override func myDescription() {

        println("\(self.name): I am a manager")
    }
}

class Employee: Person3 {
    

    override func myDescription() {
        println("\(self.name): I am an employee")
    }
}

let employee = Employee(name: "Hasan", age: 19)
employee.myDescription()

let manager = Manager(name: "Ayşe", age: 30)
manager.myDescription()



// WillSet & DidSet

class StepCounter {
    
    var step : Int = 0
        {
        willSet(newStep){
            println("my New value will be \(newStep)")
        }
        didSet
        {
            println("My old value is \(oldValue), my new value is \(step)")
        }
        
    }
}

var myStepper = StepCounter()
myStepper.step = 9
myStepper.step = 20



// SUBSCRIPTS


struct TimesTable {
    let multiplier: Int

    subscript(index: Int) -> Int {
        return multiplier * index
    }
}

var myTimeTable = TimesTable(multiplier: 4)
myTimeTable[5]
myTimeTable[23]
myTimeTable[-1]


















