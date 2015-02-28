//
//  User.swift
//  Week4Day1Session1
//
//  Created by Hasan Soysal on 28/02/15.
//  Copyright (c) 2015 Hasan Soysal. All rights reserved.
//

import UIKit

enum Gender : Int
{
    case Male, Female
}

class User: NSObject {
   
    var name : NSString = ""
    var email : NSString = ""
    var password : NSString = ""
    var gender : Gender = Gender.Male
    
    init(name: NSString, email: NSString, password: NSString, gender: Gender = Gender.Male)
    {
        self.name = name
        self.email = email
        self.gender = gender
        self.password = password
    }
    override init(){}
    
    func description () -> String
    {
        return "Name: \(self.name), email: \(self.email), password: ***, gender:\(self.gender)"
    }
    
    
    
    
    
    
}
