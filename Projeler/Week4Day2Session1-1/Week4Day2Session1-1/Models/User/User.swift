//
//  User.swift
//  Week4Day2Session1
//
//  Created by Hasan Soysal on 01/03/15.
//  Copyright (c) 2015 Hasan Soysal. All rights reserved.
//

import UIKit


enum Gender : Int
{
    case Male, Female
}

struct User {
   
    static var user : User? = nil
    var name : String = ""
    var surname : String = ""
    var email : String = ""
    var gender : Gender = Gender.Male
    var profileImageUrl: String? = ""
    var birthDate : NSDate = NSDate()
    
    init(name: String, surname : String, email:String, gender: Gender = Gender.Female, profileImageUrl: String? = nil, birthDate : NSDate)
    {
        self.name = name
        self.surname = surname
        self.email = email
        self.gender = gender
        self.profileImageUrl = profileImageUrl
        self.birthDate = birthDate
        
        User.user = self
    }
    init(){}
    
        
    static func currentUser()->User?
    {
        return User.user
    }
}




