// Playground - noun: a place where people can play

import UIKit



func join(#string : String, with string2:String, #joiner:String) -> String
{
    return string + joiner + string2
}
join(string: "Hasan", with: "Soysal", joiner: " ")
join(string: "Hasan", with: "Soysal", joiner: "-")
join(string: "Veli", with: "Soysal", joiner: "-")
join(string: "Ayşey", with: "Soysal", joiner: "-")

// Default Parameters

func joinName(name : String, #surname :String = "Soysal", #joiner : String = " ") -> String
{
        return name + joiner + surname
}

joinName("Hasan")
joinName("Ayşe")
joinName("Veli", surname: "Kaya")


// ÇOKLU PARAMETRE


func sum(numbers : Int...) -> Int
{
    var total = 0
    for each in numbers
    {
        total += each
    }
    return total
}


sum(1, 2)
sum(1, 2,4)
sum(1, 2, 5, 6, -17)

func avarage (numbers : Float...) ->Float
{
    var total :Float = 0.0
    for each in numbers
    {
        total += each
    }
    return Float( total / Float(numbers.count))
}

avarage(3, 4.3, 5.4 , 6.7, 7, 8)

// Parametrenin Değerini Değiştirme

//Error
/*func changeValue (value : String) -> String
{
    value = "Hey"
    return value
}*/


func changeValue (var value : String) -> String
{
    value = "Hey"
    return value
}

changeValue("Hasan")


// INOUT

func swapStrings (a : String , b : String) -> (String, String)
{
    return (b, a)
}
var a = "a"
var b = "b"
swapStrings(a, b)
a
b


func swapString2 (inout a : String , inout b: String)
{
    var temporary = a
    a = b
    b = temporary
}
a
b
swapString2(&a, &b)
a
b


//Function Type 


func addNumbers (#integer1 : Int , #float : Float) -> Float
{
    return Float(integer1) + float
}

addNumbers(integer1: 4, float: 4.5)

var myAddNumbersVariable = addNumbers

var myFloat = myAddNumbersVariable(integer1: 3, float: 34.3)
myFloat


func addNumbersWithFunction(functionName : (Int, Float) ->Float, number1 : Int, number2 : Float ) -> Float
{
    return functionName(number1, number2)
}

addNumbersWithFunction(myAddNumbersVariable, 2, 3)


func multiplyNumbers (#number1 : Int , #number2: Float) ->Float
{
    return Float(number1) * number2
}

addNumbersWithFunction(multiplyNumbers, 2, 3)

func multiplyNumbers2 (#number1 : Int , #number2: Float, #number3 : Int) ->Float
{
    return Float(number1) * number2 * Float(number3)
}

// Error
//addNumbersWithFunction(multiplyNumbers2, 2, 3)

// Nested Function

func stepOneMore(#backward : Bool, #currentStep : Int) -> Int
{
    var myStep = currentStep
    func stepBackward() -> Int
    {
        return --myStep
    }
    func stepForward () -> Int
    {
        return ++myStep
    }
    
    return backward ? stepBackward() : stepForward()
    
}

stepOneMore(backward: true, currentStep: 49)
stepOneMore(backward: false, currentStep: 49)

//Error
//stepBackward()

//hassoy07@gmail.com

//554 774 69 32















