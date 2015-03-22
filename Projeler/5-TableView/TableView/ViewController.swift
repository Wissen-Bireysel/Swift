//
//  ViewController.swift
//  TableView
//
//  Created by Suleyman Calik on 22/03/15.
//  Copyright (c) 2015 Wissen. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate, UIAlertViewDelegate {

    @IBOutlet weak var tableView: UITableView!
    
    let tagAlert1 = 100
    let tagAlert2 = 200
    
    var hoca = "Suleyman"
    var selectedIndexPath:NSIndexPath!
    
    var students = [
        "Alican",
        "Aslihan",
        "Cem",
        "Erdem",
        "Faik",
        "Gokhan",
        "Ilke",
        "Dilara",
        "Kemal",
        "Mustafa",
        "Ozan",
        "Salih",
        "Tugce",
        "Yilmazhan"]
    
    override func viewDidLoad() {
        super.viewDidLoad()

        tableView.dataSource = self
        tableView.delegate = self
    }

    
    //MARK: - TableView Methods
    
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 2
    }
    
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if section == 0 {
            return 1
        }
        else {
            return students.count
        }
        
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        if indexPath.section == 0 {
            var cell = tableView.dequeueReusableCellWithIdentifier("HocaCell") as UITableViewCell
            cell.textLabel?.text = hoca
            cell.detailTextLabel?.text = "iOS"
            return cell
        }
        else {
            var cell = tableView.dequeueReusableCellWithIdentifier("StudentCell") as UITableViewCell
            var row = indexPath.row
            cell.textLabel?.text = students[row]
            return cell
        }
    }
    
    
    func tableView(tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        if section == 0 {
            return "Hoca"
        }
        else {
            return "Ogrenciler"
        }
    }
    
    
    
    func tableView(tableView: UITableView, heightForRowAtIndexPath indexPath: NSIndexPath) -> CGFloat {
        return 60
    }
    
    
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        switch indexPath.section {
        case 0:
            showAlert("Hoca", name:hoca)
        case 1:
            showAlert("Ogrenci", name: students[indexPath.row])
        default:
            break
        }
        
        
        selectedIndexPath = indexPath
    }
    
    func tableView(tableView: UITableView, canEditRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        if indexPath.section == 0 {
            return false
        }
        else {
            return true
        }
    }
    
    func tableView(tableView: UITableView, commitEditingStyle editingStyle: UITableViewCellEditingStyle, forRowAtIndexPath indexPath: NSIndexPath) {
        if editingStyle == UITableViewCellEditingStyle.Delete {
            
            var name = students[indexPath.row]
            var title = name + " silinecek"
            
            selectedIndexPath = indexPath
            
            var alert = UIAlertView(title: title, message: "Emin misiniz?", delegate: self, cancelButtonTitle: "Vazgec", otherButtonTitles: "Sil")
            alert.tag = tagAlert2
            alert.show()
            
        }
    }
    
    
    //MARK: - AlertView Methods
    
    func showAlert(type:String, name:String) {
        
        var title = type + " secildi!"
        var message = name
        
        var alert = UIAlertView(title:title, message:message, delegate:self, cancelButtonTitle:"Tamam")
        alert.tag = tagAlert1
        alert.show()
    }
    
    
    func alertView(alertView: UIAlertView, clickedButtonAtIndex buttonIndex: Int) {
        
        switch alertView.tag {
        case tagAlert1:
            println("1. alertview")
        case tagAlert2:
            println("2. alertview")
        default:
            println("Farkli bir alertview")
        }
        
        switch buttonIndex {
        case 0:
            tableView.reloadRowsAtIndexPaths([selectedIndexPath], withRowAnimation:UITableViewRowAnimation.Automatic)
        case 1:
            students.removeAtIndex(selectedIndexPath.row)
            tableView.deleteRowsAtIndexPaths([selectedIndexPath], withRowAnimation:UITableViewRowAnimation.Automatic)
        default:
            break
        }
        
    }
    

}














