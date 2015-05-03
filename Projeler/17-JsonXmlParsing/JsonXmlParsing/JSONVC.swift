//
//  JSONVC.swift
//  JsonXmlParsing
//
//  Created by Suleyman Calik on 03/05/15.
//  Copyright (c) 2015 Wissen. All rights reserved.
//

import UIKit

class JSONVC: UIViewController {

    
    var campuses = [Campus]()
    
    @IBOutlet weak var spinner: UIActivityIndicatorView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    
    @IBAction func showCampuses(sender: UIButton) {
        getCampuses()
    }
    
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender:AnyObject?) {
        if let mapVC = segue.destinationViewController as? MapVC {
            mapVC.campuses = campuses
            mapVC.view.backgroundColor = UIColor.blueColor()
        }
    }
    
    
    func handleResponse(response:NSURLResponse!, data:NSData!, error:NSError!) -> Void {
        spinner.stopAnimating()
        if let campusesData = data {

            if let campusArray = NSJSONSerialization.JSONObjectWithData(campusesData, options:NSJSONReadingOptions.allZeros, error:nil) as? [NSDictionary] {
                for campusDict in campusArray {
                    
                    var campus = Campus()
                    campus.title = campusDict["title"] as? String
                    campus.latitude = campusDict["latitude"]?.doubleValue
                    campus.longitude = campusDict["longitude"]?.doubleValue
                    
                    self.campuses.append(campus)
                }
                
                
                self.performSegueWithIdentifier("MapVCSegue", sender:nil)
            }
            else {
                println("JSON parse edilemedi!")
            }
            
        }
        else {
            println("Kampüsler gelmedi: \(error)")
        }
    }
    
    
    func getCampuses() {
        var urlString = "http://4426.parseapp.com/bau.json"
        
        if let url = NSURL(string:urlString) {
            
            var request = NSURLRequest(URL:url)
            
            spinner.startAnimating()
            NSURLConnection.sendAsynchronousRequest(request, queue:NSOperationQueue.mainQueue(), completionHandler:handleResponse)
        }
        else {
            println("URL oluşmadı!")
        }
    }


}



















