// Playground - noun: a place where people can play

import UIKit


//Transfer

// continue, break, fallthrough, return

//continue
var myNameAndSurname = "Hasan Soysal"
var sessizHarfler = ""

for eachCharacter in myNameAndSurname
{
    switch eachCharacter
    {
    case "a", "e", "ı",  "i", "o", "ö", "u", "ü":
        continue
    default:
        sessizHarfler.append(eachCharacter)
    }
    
}

//Break
sessizHarfler
sessizHarfler = ""

for eachCharacter in myNameAndSurname
{
    if eachCharacter == " "
    {
        break
    }
    sessizHarfler.append(eachCharacter)
}
    
sessizHarfler

var myInteger = 7
switch myInteger
{
case 1, 3, 5, 7, 9:
    println("\(myInteger) tek sayıdır")
    fallthrough
case 2, 4, 6, 8:
    println("\(myInteger) çift sayıdır")
    
case 0:
    println("\(myInteger) 0'dır")
    
default:
    println("ve tam sayıdır")
}

//FUNCTIONS
//Tek parametreli - String, dönüş değeri String
func sayHello (myName : String) -> String
{
    var message = "Hello \(myName)"
    return message
}
sayHello("Hasan")

//İki parametreli, String ve Int, dönüş değeri String
func wakeUp (name : String, clock : Int) -> String
{
    return ("Hadi \(name), uyan. Saat :\(clock)")
}

wakeUp("Hasan", 7)
//parametresiz, dönüş değeri yok
func wakeUp2 ()
{
    println("Uyan")
}
wakeUp2()

//Tek parametreli - Int, dönüş değeri yok
func wakeUp3 (clock : Int)
{
    println("Hadi Hasan uyan, saat \(clock)")
}
wakeUp3(2)


// Tek parametreli - Array , Geri dönüş değeri tuple 

func findMinAndMax(array : Array<Int>) -> (min : Int, max:Int)
{
    var currentMin = array[0]
    var currentMax = array[0]
    
    for each in array
    {
        if each < currentMin
        {
            currentMin = each
        }
        else if each > currentMax
        {
            currentMax = each
        }
    }
    
    
    return ( currentMin, currentMax)
}

var myMinAndMax = findMinAndMax([1, 2, 3, 4, 5, -3, -7])
myMinAndMax.min
myMinAndMax.max



// NON OPTIONAL Return Type
func getCity(fromDictionary : Dictionary<String, String> , forKey:Int) -> String
{
    var myKey = ""
    for eachKey in fromDictionary.keys
    {
        if let key = eachKey.toInt()
        {
            if key == forKey
            {
                myKey = eachKey
                break
            }
        }
    }
    
    return fromDictionary[myKey]!
}

//Error
//getCity(["34":"İstanbul", "35":"İzmir"], 36)
getCity(["34":"İstanbul", "35":"İzmir"], 34)


//Optional Return Type String

func getCity2(fromDictionary : Dictionary<String, String> , forKey:Int) -> String?
{
    var myKey = ""
    for eachKey in fromDictionary.keys
    {
        if let key = eachKey.toInt()
        {
            if key == forKey
            {
                myKey = eachKey
                break
            }
        }
    }
    
    return fromDictionary[myKey]
}

getCity2(["34":"İstanbul", "35":"İzmir"], 38)


//External Parameter 

func sayHello3(to name : String)
{
    println("Hello \(name)")
}

sayHello3(to: "Hasan")

func sayHello4 (to name: String, surname s: String)
{
    println("Hello \(name) \(s)")
}


sayHello4(to: "Hasan", surname: "Soysal")


//Say My Name
func sayMyName(name : String , surname s : String)
{
    println("Hello \(name) \(s)")
}
sayMyName("Hasan", surname: "Soysal")

// External Name with #
func sayHello5 (#name: String, #surname: String)
{
    println("Hello \(name) \(surname)")
}

sayHello5(name: "Hasan", surname: "Soysal")






    
    
    
    





