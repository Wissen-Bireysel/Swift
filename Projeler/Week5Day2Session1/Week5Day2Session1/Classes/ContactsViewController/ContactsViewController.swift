//
//  ContactsViewController.swift
//  Week5Day2Session1
//
//  Created by Hasan Soysal on 08/03/15.
//  Copyright (c) 2015 Hasan Soysal. All rights reserved.
//

import UIKit

class ContactsViewController: UITableViewController {

    var contacts : Array<User> = []

    override func viewDidLoad() {
        super.viewDidLoad()
        var image1  = UIImage(named: "1")
        var image2  = UIImage(named: "2")
        var image3  = UIImage(named: "3")
        var image4  = UIImage(named: "4")
        
        var user1 = User(name: "Dilara", email: "dilara@gmail.com", image: image1)
        var user2 = User(name: "Aslıhan", email: "asli@gmail.com", image: image2)
        var user3 = User(name: "İlke", email: "ilke@gmail.com", image: image3)
        var user4 = User(name: "Tuğçe", email: "tugce@gmail.com", image: image4)
        
        contacts = [user1, user2, user3, user4]
        if let currentUser = User.currentUser()
        {
            contacts.append(currentUser)
        }
    }
    
    //MARK: - Table view
    
    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return contacts.count
    }
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        var cell : UITableViewCell = tableView.dequeueReusableCellWithIdentifier("ContactsCell") as UITableViewCell
        
        cell.imageView?.image = contacts[indexPath.row].profileImage
        cell.textLabel?.text = contacts[indexPath.row].name
        cell.detailTextLabel?.text = contacts[indexPath.row].email
        if let currentUser = User.currentUser()
        {
            if currentUser === contacts[indexPath.row]
            {
                cell.backgroundColor = UIColor.grayColor()
            }
        }
        return cell
    }
}









