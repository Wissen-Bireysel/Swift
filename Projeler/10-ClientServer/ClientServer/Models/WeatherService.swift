//
//  WeatherService.swift
//  ClientServer
//
//  Created by Suleyman Calik on 04/04/15.
//  Copyright (c) 2015 Wissen. All rights reserved.
//

import UIKit

class WeatherService: NSObject {
    
    
    let baseUrl = "http://api.openweathermap.org/data/2.5/weather"
    let urlExtension = "&units=metric&lang=tr"
    
   
    // Senkron
    func getWeatherForCity(city:String) -> Weather? {
        
        var urlString = baseUrl + "?q=" + city + urlExtension
        if let url = NSURL(string:urlString) {
            
            var request = NSURLRequest(URL:url)
            
            var response: AutoreleasingUnsafeMutablePointer<NSURLResponse?> = nil
            var error: NSErrorPointer = nil
            
            if let data:NSData = NSURLConnection.sendSynchronousRequest(request, returningResponse:response, error:error) {
                // datayı parse et
                
                var jsonError: NSErrorPointer = nil
                if let weatherDict = NSJSONSerialization.JSONObjectWithData(data, options:NSJSONReadingOptions.AllowFragments, error:jsonError) as? NSDictionary {
                    
                    return Weather()
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
    
}









