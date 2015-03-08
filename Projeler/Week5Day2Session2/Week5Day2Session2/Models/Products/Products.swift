//
//  Products.swift
//  Week5Day2Session2
//
//  Created by Hasan Soysal on 08/03/15.
//  Copyright (c) 2015 Hasan Soysal. All rights reserved.
//

import UIKit

enum Category : Int
{
    case Bilgisayar, EvAletleri
}

class Products: NSObject {
 
    
    var name: String = ""
    var category : Category
    var image : UIImage? = nil

    init(name : String, category : Category, image : UIImage? = nil)
    {
        self.name = name
        self.category = category
        self.image = image
    }
}
