// Playground - noun: a place where people can play

import UIKit

// Protocols continued
// Protocol Inheritance

protocol Protocol1
{
    func function1()
}

protocol Protocol2 : Protocol1
{
    func function2()
}


class MyClass : Protocol2 {
    
    
    var name : String = ""

    // All required functions must be implemented
    func function1 ()
    {
        
    }
    func function2() {
        
    }
}

class MyClass2 {
    var name : String = ""
}

class MyClass3 : Protocol1 {
    
    func function1() {
        
    }
}

let myClass = MyClass()
let myClass2 = MyClass2()
let myClass3 = MyClass3()

func checkProtocol(giveMeAClass : protocol <Protocol1, Protocol2>)
{
    giveMeAClass.function2()
    giveMeAClass.function1()
}
// This is OK
checkProtocol(myClass)
// This is NOT OK 
//Error
//checkProtocol(myClass2)

// This is NOT OK
//Error
//checkProtocol(myClass3)


@objc protocol Protocol3
{
    func function3()
}

class MyClass4 : Protocol3 {
    
    func function3() {
        
    }
}

let myClass4 = MyClass4()

func checkProtocol2(aClass : AnyObject)
{
    if let myTemporaryVariable = aClass as? Protocol3
    {
        println("This class conform Protocol3")
    }
}

checkProtocol2(myClass2)
checkProtocol2(myClass3)
checkProtocol2(myClass4)


// GENERICS 

func swapTwoInt(inout integer1 : Int, inout integer2 : Int)
{
    var tempInt = integer1
    integer1 = integer2
    integer2 = tempInt
}

var myInt = 89
var myInt2 = 38
swapTwoInt(&myInt, &myInt2)
myInt
myInt2


func swapTwo<T> (inout value1: T , inout value2 : T )
{
    var tempInt = value1
    value1 = value2
    value2 = tempInt
}

var myName = "Hasan"
var mySurname = "Soysal"

swapTwo(&myName, &mySurname)
myName
mySurname
swapTwo(&myInt2, &myInt)
myInt
myInt2


















