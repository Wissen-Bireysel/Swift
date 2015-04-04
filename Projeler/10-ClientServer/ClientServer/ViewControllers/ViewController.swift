//
//  ViewController.swift
//  ClientServer
//
//  Created by Suleyman Calik on 04/04/15.
//  Copyright (c) 2015 Wissen. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var lblCity: UILabel!
    @IBOutlet weak var lblDescription: UILabel!
    @IBOutlet weak var lblTemprature: UILabel!
    @IBOutlet weak var lblUnit: UILabel!
    @IBOutlet weak var imgWeather: UIImageView!
    
    var weatherService = WeatherService()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        getWeatherForIstanbul()
    }

    
    func getWeatherForIstanbul() {
        
        let city = "Istanbul"
        
        var weather = weatherService.getWeatherForCity(city)
        lblCity.text = city
        lblDescription.text = weather!.desc
        lblTemprature.text = "\(Int(weather!.temprature))"
    }


}














