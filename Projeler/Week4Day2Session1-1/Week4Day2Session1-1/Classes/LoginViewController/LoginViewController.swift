//
//  LoginViewController.swift
//  Week4Day2Session1
//
//  Created by Hasan Soysal on 01/03/15.
//  Copyright (c) 2015 Hasan Soysal. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func buttonCreateUserTapped(sender: UIButton?)
    {
        var user : User = User(name: "Hasan", surname: "Soysal", email: "hassoy07@gmail.com", gender: .Male)
        
        var viewController = self.storyboard?.instantiateViewControllerWithIdentifier("ProfileViewController") as ProfileViewController
        self.navigationController?.pushViewController(viewController, animated: true)
        
    }
}
