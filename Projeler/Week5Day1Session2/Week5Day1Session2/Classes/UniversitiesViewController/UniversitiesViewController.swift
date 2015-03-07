//
//  UniversitiesViewController.swift
//  Week5Day1Session2
//
//  Created by Hasan Soysal on 07/03/15.
//  Copyright (c) 2015 Hasan Soysal. All rights reserved.
//

import UIKit

class UniversitiesViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var tableview : UITableView!
    var universities : Array<University> = []
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        var university1 = University(name: "Bahçeşehir", city: "İstanbul", universityType: .Public)
        var university2 = University(name: "ODTÜ", city: "Ankara", universityType: .Public)
        var university3 = University(name: "Özyeğin", city: "İstanbul", universityType: .Private)
        
        universities = [university1, university2, university3]

    }

    //MARK: - Tableview
    
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return universities.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        var cell : UniversityCell = tableView.dequeueReusableCellWithIdentifier("UniversityCell") as UniversityCell
        cell.setupUIFor( universities[indexPath.row] as University )
        return cell
    }
    
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        
        var universityDetail : UniversityDetailViewController = self.storyboard?.instantiateViewControllerWithIdentifier("UniversityDetailViewController") as UniversityDetailViewController
        universityDetail.setupUIFor(universities[indexPath.row])
        self.navigationController?.pushViewController(universityDetail, animated: true)
    }
    
    //MARK: Delete
    
    func tableView(tableView: UITableView, canEditRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        return true
    }
    func tableView(tableView: UITableView, titleForDeleteConfirmationButtonForRowAtIndexPath indexPath: NSIndexPath) -> String! {
        return "Sil"
    }
    
    func tableView(tableView: UITableView, commitEditingStyle editingStyle: UITableViewCellEditingStyle, forRowAtIndexPath indexPath: NSIndexPath) {
        
        if (editingStyle == UITableViewCellEditingStyle.Delete)
        {
            universities.removeAtIndex(indexPath.row)
            var deletedIndexPath : NSIndexPath = NSIndexPath(forRow: indexPath.row, inSection: indexPath.section)
            tableView.deleteRowsAtIndexPaths([deletedIndexPath], withRowAnimation: UITableViewRowAnimation.Left)
        }
    }
    
    
    
    
    
    
    
    
    
    
    
    
    
    
}
