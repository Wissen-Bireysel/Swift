//
//  ViewController.swift
//  ClientServer
//
//  Created by Suleyman Calik on 04/04/15.
//  Copyright (c) 2015 Wissen. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var weatherService = WeatherService()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        getWeatherForIstanbul()
    }

    
    func getWeatherForIstanbul() {
        var weather = weatherService.getWeatherForCity("Istanbul")
    }


}














