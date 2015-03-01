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

class User: NSObject {
   
    var name : String = ""
    var surname : String = ""
    var email : String = ""
    var gender : Gender = Gender.Male
    var profileImageUrl: String? = ""
    var birthDate : NSDate? = nil
    
    init(name: String, surname : String, email:String, gender: Gender = Gender.Female, profileImageUrl: String? = nil, birthDate : NSDate? = nil)
    {
        self.name = name
        self.surname = surname
        self.email = email
        self.gender = gender
        self.profileImageUrl = profileImageUrl
        self.birthDate = birthDate
    }
    
    func currentUser()->User
    {
        return self
    }
}




