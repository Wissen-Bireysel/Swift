//
//  MapVC.swift
//  JsonXmlParsing
//
//  Created by Suleyman Calik on 03/05/15.
//  Copyright (c) 2015 Wissen. All rights reserved.
//

import UIKit
import MapKit

class MapVC: UIViewController {

    @IBOutlet weak var mapView: MKMapView!
    
    var campuses:[Campus]!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = "Kampüsler"
        
        for campus in campuses {
            var coordinate = CLLocationCoordinate2D(latitude:campus.latitude, longitude:campus.longitude)
            var annotation = CampusAnnotation(coordinate:coordinate, title:campus.title)
            mapView.addAnnotation(annotation)
        }
        
        var coord = CLLocationCoordinate2D(latitude:41, longitude:29)
        var region =  MKCoordinateRegionMakeWithDistance(coord, 20000,20000)
        mapView.setRegion(region, animated:true)
        
    }



}














