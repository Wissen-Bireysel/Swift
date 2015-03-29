//
//  WissenAnnotation.swift
//  MapKit
//
//  Created by Suleyman Calik on 29/03/15.
//  Copyright (c) 2015 Wissen. All rights reserved.
//

import UIKit
import MapKit

class WissenAnnotation: NSObject, MKAnnotation {
   
    var coordinate:CLLocationCoordinate2D
    var title: String!
    var subtitle: String!
    
    init(coordinate:CLLocationCoordinate2D) {
        self.coordinate = coordinate
    }
    
}





