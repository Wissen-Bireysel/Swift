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
    @IBOutlet weak var slider: UISlider!
    @IBOutlet weak var segment: UISegmentedControl!
    
    var locationManager:CLLocationManager!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        prepareMapView()
    }


    
    func prepareMapView() {
        
        mapView.delegate = self
        
        locationManager = CLLocationManager()
        locationManager.desiredAccuracy = kCLLocationAccuracyBest
        locationManager.delegate = self
        
        slider.enabled = false
        slider.minimumValue = 100
        slider.maximumValue = 10000
        
        
        
        // Karaköy
        var coord1 = CLLocationCoordinate2D(latitude:41.025120,longitude:28.977525)
        var ann1 = WissenAnnotation(coordinate:coord1)
        ann1.title = "Karaköy Kampüs"
        ann1.subtitle = "Bahçeşehir Üniversitesi"
        mapView.addAnnotation(ann1)
        
        // Beşiktaş
        var coord2 = CLLocationCoordinate2D(latitude:41.042057,longitude:29.009072)
        var ann2 = WissenAnnotation(coordinate:coord2)
        ann2.title = "Beşiktaş Kampüs"
        ann2.subtitle = "Bahçeşehir Üniversitesi"
        mapView.addAnnotation(ann2)
        
    }

    
    @IBAction func sliderValueChanged(sender: UISlider) {
        
        var meters = Double(slider.value)
        
        var region = MKCoordinateRegionMakeWithDistance(locationManager.location.coordinate, meters, meters)
        mapView.setRegion(region, animated:false)
    }
    
    
    @IBAction func segmentValueChanged(sender: UISegmentedControl) {
        switch segment.selectedSegmentIndex {
        case 0:
            mapView.mapType = MKMapType.Standard
        case 1:
            mapView.mapType = MKMapType.Satellite
        case 2:
            mapView.mapType = MKMapType.Hybrid
        default:
            break
        }
    }
    

}

extension ViewController:CLLocationManagerDelegate, MKMapViewDelegate {
    
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
    
    
    
    func mapView(mapView: MKMapView!, didUpdateUserLocation userLocation: MKUserLocation!) {
        if let location:CLLocation = userLocation?.location {
            println("lat: \(location.coordinate.latitude)")
            println("lon: \(location.coordinate.longitude)")
            
            
            var region = MKCoordinateRegionMakeWithDistance(location.coordinate, 1000, 1000)
            mapView.setRegion(region, animated:true)
            slider.value = 1000
            slider.enabled = true
        }
        else {
            println("Lokasyon boş geldi!")
        }
    }
    
    
    func mapView(mapView: MKMapView!, viewForAnnotation annotation: MKAnnotation!) -> MKAnnotationView! {
        
        if annotation is WissenAnnotation {
            let identifier = "AnnotationView"
            
            var annView = mapView.dequeueReusableAnnotationViewWithIdentifier(identifier)
            
            if annView == nil {
                annView = MKAnnotationView(annotation:annotation, reuseIdentifier:identifier)
            }
            annView.canShowCallout = true
            annView.image = UIImage(named:"bu")
            
            return annView
        }
        else {
            return nil
        }
    }
    
    
}

















