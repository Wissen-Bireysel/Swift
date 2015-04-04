//
//  Weather.swift
//  ClientServer
//
//  Created by Suleyman Calik on 04/04/15.
//  Copyright (c) 2015 Wissen. All rights reserved.
//

import UIKit

class Weather: NSObject {
    
    var temprature:Double
    var desc:String
    var icon:String
    
    init(temprature:Double, description:String, icon:String) {
        self.temprature = temprature
        self.desc = description
        self.icon = icon
    }
    
}
