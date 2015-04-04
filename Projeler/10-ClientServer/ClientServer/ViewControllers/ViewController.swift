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

//        getWeatherForIstanbul()
        getWeatherForIstanbulAsync()
    }

    
    //MARK: -
    
    func getWeatherForIstanbulAsync() {
        let city = "Istanbul"
        weatherService.delegate = self
        weatherService.getWeatherForCityAsync(city)
    }
    
    func getWeatherForIstanbul() {
        
        let city = "Istanbul"
        
        if let weather = weatherService.getWeatherForCity(city) {
            lblCity.text = city
            lblDescription.text = weather.desc
            lblTemprature.text = "\(Int(weather.temprature))"
            
            
            var iconUrl = "http://openweathermap.org/img/w/" + weather.icon + ".png"
            if let url = NSURL(string:iconUrl) {
                //Senkron
                if let iconData = NSData(contentsOfURL:url) {
                    imgWeather.image = UIImage(data:iconData)
                }
            }
            
        }
        else {
            UIAlertView(title:"Hava Durumu Alınamadı", message:"Lütfen internet bağlantınızı kontrol ediniz.", delegate:nil, cancelButtonTitle:"Tamam").show()
        }
    }


}


//MARK: - WeatherDelegate Methods

extension ViewController:WeatherDelegate {
    
    func weatherFetched(weather: Weather, forCity city: String) {
        lblCity.text = city
        lblDescription.text = weather.desc
        lblTemprature.text = "\(Int(weather.temprature))"
        
        
        var iconUrl = "http://openweathermap.org/img/w/" + weather.icon + ".png"
        if let url = NSURL(string:iconUrl) {
            //Senkron
            if let iconData = NSData(contentsOfURL:url) {
                imgWeather.image = UIImage(data:iconData)
            }
        }
    }
    
    
    func weatherNotFetchedForcity(city: String) {
        UIAlertView(title:"Hava Durumu Alınamadı", message:"Lütfen internet bağlantınızı kontrol ediniz.", delegate:nil, cancelButtonTitle:"Tamam").show()
    }
    
}














