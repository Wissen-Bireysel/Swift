//
//  CampusAnnotation.swift
//  JsonXmlParsing
//
//  Created by Suleyman Calik on 03/05/15.
//  Copyright (c) 2015 Wissen. All rights reserved.
//

import UIKit
import MapKit

class CampusAnnotation: NSObject, MKAnnotation {
   
    var coordinate:CLLocationCoordinate2D
    var title: String
    
    init(coordinate:CLLocationCoordinate2D, title:String) {
        self.coordinate = coordinate
        self.title = title
    }
    
}
















