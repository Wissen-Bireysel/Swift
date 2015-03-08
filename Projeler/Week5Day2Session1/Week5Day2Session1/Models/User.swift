//
//  User.swift
//  Week5Day2Session1
//
//  Created by Hasan Soysal on 08/03/15.
//  Copyright (c) 2015 Hasan Soysal. All rights reserved.
//

import UIKit

private var user : User? = nil
class User: NSObject {
 
    var name : String = ""
    var email : String = ""
    var profileImage : UIImage? = nil
    
    init(name : String, email:String, image : UIImage? = nil)
    {
        self.name = name
        self.email = email
        self.profileImage = image
    }
    override init(){}
    class  func loginUser(name: String, email : String, image:UIImage? = nil) {
        user = User()
        user?.name = name
        user?.profileImage = image
        user?.email = email
    }
    
    class func currentUser ()->User? {
        return user
    }
}






