//
//  WeatherService.swift
//  ClientServer
//
//  Created by Suleyman Calik on 04/04/15.
//  Copyright (c) 2015 Wissen. All rights reserved.
//

import UIKit

class WeatherService: NSObject {
    
    var delegate:WeatherDelegate?
    
    let baseUrl = "http://api.openweathermap.org/data/2.5/weather"
    let urlExtension = "&units=metric&lang=tr"
    
   
    // Senkron
    func getWeatherForCity(city:String) -> Weather? {
        
        // Hava durumu verisini alacağımız url adresini oluşturuyoruz.
        var urlString = baseUrl + "?q=" + city + urlExtension
        
        // urlString ile NSURL oluşturuyoruz
        if let url = NSURL(string:urlString) {
            
            //
            var request = NSURLRequest(URL:url)
            
            var response: AutoreleasingUnsafeMutablePointer<NSURLResponse?> = nil
            var error: NSErrorPointer = nil
            
            // Oluşturduğumuz request ile senkron server çağrısı yapıyoruz
            if let data:NSData = NSURLConnection.sendSynchronousRequest(request, returningResponse:response, error:error) {
                // Server cevabı NSData tipinde döndü
                
                // NSData'dan JSONObject, yani Dictionary oluşturuyoruz
                var jsonError: NSErrorPointer = nil
                if let weatherDict = NSJSONSerialization.JSONObjectWithData(data, options:NSJSONReadingOptions.AllowFragments, error:jsonError) as? NSDictionary {
                    
                    var code:NSNumber = weatherDict["cod"] as NSNumber
                    
                    if code.integerValue == 200 {
                        
                        var mainDict = weatherDict["main"] as NSDictionary
                        var temprature:NSNumber = mainDict["temp"] as NSNumber
                        
                        var weatherArray:NSArray = weatherDict["weather"] as NSArray
                        
                        var innerWeatherDict = weatherArray.firstObject as NSDictionary
                        var description:String = innerWeatherDict["description"] as String
                        
                        var icon:String = innerWeatherDict["icon"] as String
                        
                        return Weather(temprature:temprature.doubleValue, description:description, icon:icon)
                    }
                    else {
                        return nil
                    }
                }
                else {
                    return nil
                }
            }
            else {
                return nil
            }
        }
        else {
            return nil
        }
    }
    
    
    
    //Asenkron
    
    
    func getWeatherForCityAsync(city:String) {
        var urlString = baseUrl + "?q=" + city + urlExtension
        if let url = NSURL(string:urlString) {
            
            var request = NSURLRequest(URL:url)

            NSURLConnection.sendAsynchronousRequest(request, queue:NSOperationQueue.mainQueue(), completionHandler: { (response:NSURLResponse!, data:NSData!, error:NSError!) -> Void in
                if let data = data {
                    
                    var jsonError: NSErrorPointer = nil
                    if let weatherDict = NSJSONSerialization.JSONObjectWithData(data, options:NSJSONReadingOptions.AllowFragments, error: jsonError) as? NSDictionary {
                        
                        var code:NSNumber = weatherDict["cod"] as NSNumber
                        
                        if code.integerValue == 200 {
                            
                            var mainDict = weatherDict["main"] as NSDictionary
                            var temprature:NSNumber = mainDict["temp"] as NSNumber
                            
                            var weatherArray:NSArray = weatherDict["weather"] as NSArray
                            
                            var innerWeatherDict = weatherArray.firstObject as NSDictionary
                            var description:String = innerWeatherDict["description"] as String
                            
                            var icon:String = innerWeatherDict["icon"] as String
                            
                            // temprature,description ve icon değerleri ile
                            // Weather objesi oluşturuyoruz
                            var weather = Weather(temprature:temprature.doubleValue, description:description, icon:icon)
                            
                            // Eğer delegate değişkenimiz dolu ise,
                            // onun weatherFetched methodunu çağırıyoruz
                            self.delegate?.weatherFetched(weather, forCity:city)
                        }
                        else {
                            self.delegate?.weatherNotFetchedForcity(city)
                        }
                        
                    }
                    else {
                        self.delegate?.weatherNotFetchedForcity(city)
                    }
                }
            })
        }
        else {
            self.delegate?.weatherNotFetchedForcity(city)
        }
    }
    
}











