//
//  NewContactVC.swift
//  CoreData
//
//  Created by Suleyman Calik on 12/04/15.
//  Copyright (c) 2015 Wissen. All rights reserved.
//

import UIKit
import CoreData


enum ContactType {
    case New
    case Edit
}


class NewContactVC: UIViewController {

    
    @IBOutlet weak var txtName: UITextField!
    @IBOutlet weak var txtNumber: UITextField!
    @IBOutlet weak var txtEmail: UITextField!
    
    var appDelegate = UIApplication.sharedApplication().delegate as AppDelegate
    var type:ContactType = ContactType.New
    
    @IBAction func saveContact(sender: UIButton) {
        var control1 = countElements(txtName.text) > 0
        var control2 = countElements(txtNumber.text) > 0
        var control3 = countElements(txtEmail.text) > 0
        
        if control1 && control2 && control3 {
            var newContact = NSEntityDescription.insertNewObjectForEntityForName("Contact", inManagedObjectContext:appDelegate.managedObjectContext!) as Contact
            newContact.name = txtName.text
            newContact.number = txtNumber.text
            newContact.email = txtEmail.text
            
            appDelegate.saveContext()
            navigationController?.popViewControllerAnimated(true)
        }
        else {
            println("Alanlar boş bırakılamaz.")
        }
        
    }


}










