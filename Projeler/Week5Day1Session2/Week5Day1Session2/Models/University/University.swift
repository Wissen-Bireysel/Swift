//
//  University.swift
//  Week5Day1Session1
//
//  Created by Hasan Soysal on 07/03/15.
//  Copyright (c) 2015 Hasan Soysal. All rights reserved.
//

import UIKit

enum UniversityType : Int
{
    case Public, Private
}

class University: NSObject {
   
    var name : String = ""
    var city : String = ""
    var birdthDate : NSDate = NSDate()
    var capacity : Int = 0
    var universityType : UniversityType = .Public
    
    init(name : String, city : String, universityType : UniversityType)
    {
        self.name = name
        self.city = city
        self.universityType = universityType
    }
}





