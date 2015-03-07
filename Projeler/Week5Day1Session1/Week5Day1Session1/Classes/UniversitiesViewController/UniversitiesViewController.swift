//
//  UniversitiesViewController.swift
//  Week5Day1Session1
//
//  Created by Hasan Soysal on 07/03/15.
//  Copyright (c) 2015 Hasan Soysal. All rights reserved.
//

import UIKit

class UniversitiesViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    @IBOutlet weak var tableview:UITableView!
    
    var universities : NSArray = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        var university1 = University(name: "Bahçeşehir", city: "İstanbul", universityType: .Public)
        var university2 = University(name: "ODTÜ", city: "Ankara", universityType: .Public)
        var university3 = University(name: "Özyeğin", city: "İstanbul", universityType: .Private)
        
        universities = [university1, university2, university3]
    }
    
    //MARK: - Table View
    
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return universities.count
    }
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        var cell : UITableViewCell = tableView.dequeueReusableCellWithIdentifier("UniversityCell") as UITableViewCell
        var university:University = universities[indexPath.row] as University
        cell.textLabel?.text = university.name
        cell.detailTextLabel?.text = university.city
        return cell
    }
    
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        tableView.deselectRowAtIndexPath(indexPath, animated: true)
        var university : University = universities[indexPath.row] as University
        UIAlertView(title: "Seçilen Universite", message: "\(university.name)", delegate: nil, cancelButtonTitle: "Tamam").show()
    }
    func tableView(tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return "Universiteler"
    }
    func tableView(tableView: UITableView, titleForFooterInSection section: Int) -> String? {
        return "This is the footer"
    }
    func tableView(tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        var header : UIView = UIView(frame: CGRect(x: 0, y: 0, width: tableView.bounds.size.width, height: 100))
        header.backgroundColor = UIColor.purpleColor()
        var nameLabel : UILabel = UILabel(frame: CGRect(x: 0, y: 0, width: header.frame.size.width, height: header.frame.size.height))
        nameLabel.textColor = UIColor(red: 71.0/255.0, green: 200/255.0, blue: 0/255.0, alpha: 1)
        nameLabel.text = "Universiteler"
        header.addSubview(nameLabel)
        return header
    }
}











