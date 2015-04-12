//
//  ContactsVC.swift
//  CoreData
//
//  Created by Suleyman Calik on 12/04/15.
//  Copyright (c) 2015 Wissen. All rights reserved.
//

import UIKit
import CoreData


class ContactsVC: UITableViewController {
    
    
    var contacts = [Contact]()
    var appDelegate = UIApplication.sharedApplication().delegate as AppDelegate

    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem()
    }
    
    
    override func viewDidAppear(animated: Bool) {
        super.viewDidAppear(animated)
        
        refreshContacts()
    }

    
    func refreshContacts() {
        
        // veri tabanından kişiler çekilir
        let fetchRequest = NSFetchRequest(entityName:"Contact")
        
        if let contactObjects = appDelegate.managedObjectContext?.executeFetchRequest(fetchRequest, error:nil) as? [Contact] {
            contacts = contactObjects
            tableView.reloadData()
        }
        
    }
    
    

    // MARK: - Table view data source

    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return contacts.count
    }

    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("ContactCell", forIndexPath: indexPath) as UITableViewCell

        var contact = contacts[indexPath.row]
        
        cell.textLabel?.text = contact.name
        cell.detailTextLabel?.text = contact.number

        return cell
    }
    

    /*
    // Override to support conditional editing of the table view.
    override func tableView(tableView: UITableView, canEditRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        // Return NO if you do not want the specified item to be editable.
        return true
    }
    */

    
    // Override to support editing the table view.
    override func tableView(tableView: UITableView, commitEditingStyle editingStyle: UITableViewCellEditingStyle, forRowAtIndexPath indexPath: NSIndexPath) {
        if editingStyle == .Delete {

            var contact = contacts[indexPath.row]
            
            appDelegate.managedObjectContext?.deleteObject(contact)
            appDelegate.saveContext()
            
            contacts.removeAtIndex(indexPath.row)
            tableView.deleteRowsAtIndexPaths([indexPath], withRowAnimation: .Fade)
            
        } else if editingStyle == .Insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    

    /*
    // Override to support rearranging the table view.
    override func tableView(tableView: UITableView, moveRowAtIndexPath fromIndexPath: NSIndexPath, toIndexPath: NSIndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(tableView: UITableView, canMoveRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        // Return NO if you do not want the item to be re-orderable.
        return true
    }
    */

    
    // MARK: - Navigation

    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {

        if let newContactVC = segue.destinationViewController as? NewContactVC {

            if segue.identifier == "Edit" {
                
                if let cell = sender as? UITableViewCell {
                    
                    if let indexPath = tableView.indexPathForCell(cell) {
                        var contact = contacts[indexPath.row]
                        
                        newContactVC.type = .Edit
                        newContactVC.contact = contact
                    }
                }
            }
        }
        
    }
    

}













