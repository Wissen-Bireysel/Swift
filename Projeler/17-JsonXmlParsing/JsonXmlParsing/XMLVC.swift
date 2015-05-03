//
//  XMLVC.swift
//  JsonXmlParsing
//
//  Created by Suleyman Calik on 03/05/15.
//  Copyright (c) 2015 Wissen. All rights reserved.
//

import UIKit

class XMLVC: UIViewController {
    
    @IBOutlet weak var spinner: UIActivityIndicatorView!
    
    var campuses = [Campus]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func showCampuses(sender: UIButton) {
        getCampuses()
    }
    
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender:AnyObject?) {
        if let mapVC = segue.destinationViewController as? MapVC {
            mapVC.campuses = campuses
        }
    }
    
    func handleResponse(response:NSURLResponse!, data:NSData!, error:NSError!) -> Void {
        spinner.stopAnimating()
        if let campusesData = data {
            
            var xmlParser = NSXMLParser(data:campusesData)
            xmlParser.delegate = self
            xmlParser.parse()
            
        }
        else {
            println("Kampüsler gelmedi: \(error)")
        }
    }
    
    
    func getCampuses() {
        var urlString = "http://4426.parseapp.com/bau.xml"
        
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


var responseText = ""
var currentCampus:Campus!

extension XMLVC:NSXMLParserDelegate {
    
    
    func parser(parser: NSXMLParser, foundCharacters string: String?) {
        responseText += string!
    }

    
    func parser(parser: NSXMLParser, didStartElement elementName: String, namespaceURI: String?, qualifiedName qName: String?, attributes attributeDict: [NSObject : AnyObject]) {
        responseText = ""
        
        if elementName == "campus" {
            currentCampus = Campus()
        }
    }
    
    
    func parser(parser: NSXMLParser, didEndElement elementName: String, namespaceURI: String?, qualifiedName qName: String?) {
        
        switch elementName {
        case "campus":
            campuses.append(currentCampus)
        case "title":
            currentCampus.title = responseText
        case "latitude":
            currentCampus.latitude = (responseText as NSString).doubleValue
        case "longitude":
            currentCampus.longitude = (responseText as NSString).doubleValue
        default:
            break
        }
        
    }
    
    func parserDidEndDocument(parser: NSXMLParser) {
        performSegueWithIdentifier("MapVCSegue", sender:nil)
    }
    
    
}














