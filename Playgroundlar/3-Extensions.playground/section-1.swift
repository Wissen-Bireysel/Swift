// Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"


extension Double {
    
    func format() -> String {
        return String(format: "%.2f" , self)
    }
}



println(10.1)


var myDouble = 10.1

println(myDouble.format())



extension Int {
    func ikininKatiMi() -> Bool {
        return self % 2 == 0
    }
}


10.ikininKatiMi()
11.ikininKatiMi()




















