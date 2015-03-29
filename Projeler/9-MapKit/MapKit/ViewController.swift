//
//  ViewController.swift
//  MapKit
//
//  Created by Suleyman Calik on 29/03/15.
//  Copyright (c) 2015 Wissen. All rights reserved.
//

import UIKit
import MapKit
import CoreLocation

class ViewController: UIViewController {

    
    @IBOutlet weak var mapView: MKMapView!
    var locationManager:CLLocationManager!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
        prepareMapView()
    }


    
    func prepareMapView() {
        
        locationManager = CLLocationManager()
        locationManager.delegate = self
    }

}

extension ViewController:CLLocationManagerDelegate {
    
    
    func locationManager(manager: CLLocationManager!, didFailWithError error: NSError!) {
        println("locationManager didFailWithError: \(error.description)")
    }
    
    
    func locationManager(manager: CLLocationManager!, didChangeAuthorizationStatus status: CLAuthorizationStatus) {
        switch status {
        case .NotDetermined:
            println("CLAuthorizationStatus NotDetermined")
            
            locationManager.requestWhenInUseAuthorization()
            
        case .Restricted, .Denied:
            println("CLAuthorizationStatus Denied")
            
            var alert = UIAlertView(title:"Konum Alınamıyor", message:"Lütfen konum ayarlarını kontrol ediniz.", delegate:nil, cancelButtonTitle:"OK")
            alert.show()
            
        case .AuthorizedAlways, .AuthorizedWhenInUse:
            println("CLAuthorizationStatus Authorized")
            
            mapView.showsUserLocation = true
        }
    }
    
    
}














