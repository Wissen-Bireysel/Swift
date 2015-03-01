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
        var date : NSDate = NSDate(timeIntervalSinceNow:(-1 * 60 * 60 * 24 * 365 * 28))
        var user : User = User(name: "Hasan", surname: "Soysal", email: "hassoy07@gmail.com", gender: Gender.Male, profileImageUrl: "", birthDate: date)
        
        
        var viewController = self.storyboard?.instantiateViewControllerWithIdentifier("ProfileViewController") as ProfileViewController
        
        var myOtherUser : User = User(name: "Ayşe", surname: "Kara", email: "akara@gmail.com", gender: Gender.Female, profileImageUrl: nil, birthDate: date)
        
        viewController.setupUIForUser(User.currentUser())
        self.navigationController?.pushViewController(viewController, animated: true)
        
    }
}
