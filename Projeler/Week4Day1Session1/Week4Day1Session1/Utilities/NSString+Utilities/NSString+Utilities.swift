//
//  NSString+Utilities.swift
//  Week4Day1Session1
//
//  Created by Hasan Soysal on 28/02/15.
//  Copyright (c) 2015 Hasan Soysal. All rights reserved.
//

import Foundation

extension String
{
    func isEmail () -> Bool
    {
        var regex : String = "[A-Z0-9a-z\\._%+-]+@([A-Za-z0-9-]+\\.)+[A-Za-z]{2,4}"
        
        if let emailText = NSPredicate(format: "self matches %@", regex)
        {
            return emailText.evaluateWithObject(self)
        }
        return false
    }
}
