// Playground - noun: a place where people can play

import UIKit



class Person {
    var name : String = ""
    
    init(name : String)
    {
        self.name = name
    }
    init(){}
}
class Media {
    var name : String = ""
    
    init(name : String)
    {
        self.name = name
    }
}

class Book : Media
{
    var writer : Person = Person()
    
    init(name : String, writer:Person)
    {
        super.init(name: name)
        self.writer = writer
    }
}

class Movie : Media {
    
    var director : Person = Person()
    
    init(name: String, director: Person)
    {
        super.init(name: name)
        self.director = director
    }
}

let writer = Person(name: "Down Brown")
let director = Person(name: "Bilge Ceylan")

let book = Book(name: "Melekler ve Şeytanlar", writer: writer)
let movie = Movie(name: "Mayıs Sıkıntısı", director: director)

let medias = [book, movie]


if let media = medias.first
{
    if media is Book
    {
        var b : Book = media as Book
        println("The writer of \(media.name) is \(b.writer.name)" )
    }
    else if media is Movie
    {
        var m : Movie = media as Movie
        println("The writer of \(media.name) is \(m.director.name)" )
    }
}

/// 

class  Person2  {
    
    var name : String = ""
    var jobTitle : String = ""

    init(name : String, jobTitle: String)
    {
        self.name = name
        self.jobTitle = jobTitle
    }
    
    
    func description()
    {
        println("I have no job")
    }
}

class Student : Person2
{
    init(name : String)
    {
        super.init(name: name, jobTitle: "Listen to teacher")
    }
    override func description() {
        println("I have to listen to the teacher")
    }
}


class Teacher : Person2 {
    init(name : String)
    {
        super.init(name: name, jobTitle: "")
    }
    override func description() {
        println("I have to teach Swift")
    }
}

var student1 : Student = Student(name: "Ayşe")
var student2 : Student = Student(name: "Mustafa")
var teacher : Teacher = Teacher(name: "Hasan")

let classroom = [student1, teacher, student2]

for each in classroom
{
    if each is Teacher
    {
        each.description()
    }
}


let classroom2 = [student1, teacher, "Hello", 2]

for each in classroom2
{
    if each is String
    {
        println(each)
    }
}


// Extensions


extension Int
{
    func writeAsText() -> String
    {
        switch self{
        case 1:
            return "One"
        case 2:
            return "Two"
        case 3:
            return "Three"
        default:
            return "No text"
        }
    }
}

3.writeAsText()

extension Int
{
    func km()->Float
    {
        return Float(self) / 1000.0
    }
    func cm () -> Int
    {
        return self * 100
    }
    mutating func square ()
    {
        self = self * self
    }
    func square2 () -> Int
    {
        return self * self
    }
}

34.km()
500.km()
45.cm()


// Error Because it is defined as LET
//8.square()


var myInt = 8
myInt.square()

var myInt2 = 7
myInt2.square2()
myInt2


















