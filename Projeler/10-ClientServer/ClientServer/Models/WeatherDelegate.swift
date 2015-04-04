//
//  WeatherDelegate.swift
//  ClientServer
//
//  Created by Suleyman Calik on 04/04/15.
//  Copyright (c) 2015 Wissen. All rights reserved.
//

import Foundation

protocol WeatherDelegate {
    
    func weatherFetched(weather:Weather, forCity city:String)
    
    func weatherNotFetchedForcity(city:String)

}