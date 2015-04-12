//
//  NewContactVC.swift
//  Realm
//
//  Created by Suleyman Calik on 12/04/15.
//  Copyright (c) 2015 Wissen. All rights reserved.
//

import UIKit
import Realm

class NewContactVC: UIViewController {

    @IBOutlet weak var txtName: UITextField!
    @IBOutlet weak var txtNumber: UITextField!
    @IBOutlet weak var txtEmail: UITextField!
    
    var contact:Contact!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if contact != nil {
            txtName.text = contact.name
            txtNumber.text = contact.number
            txtEmail.text = contact.email
            
            title = "Kişi Düzenle"
        }
    }
    
    
    @IBAction func saveContact(sender: UIButton) {
        
        var control1 = countElements(txtName.text) > 0
        var control2 = countElements(txtNumber.text) > 0
        var control3 = countElements(txtEmail.text) > 0
        
        
        if control1 && control2 && control3 {
            
            let realm = RLMRealm.defaultRealm()
            realm.beginWriteTransaction()

            if contact == nil {
                var newContact = Contact()
                newContact.name = txtName.text
                newContact.number = txtNumber.text
                newContact.email = txtEmail.text
                
                realm.addObject(newContact)
            }
            else {
                contact.name = txtName.text
                contact.number = txtNumber.text
                contact.email = txtEmail.text
            }
            
            realm.commitWriteTransaction()
            
            navigationController?.popViewControllerAnimated(true)
        }
        
    }

}














