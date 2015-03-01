//
//  ProfileViewController.swift
//  Week4Day2Session1
//
//  Created by Hasan Soysal on 01/03/15.
//  Copyright (c) 2015 Hasan Soysal. All rights reserved.
//

import UIKit

class ProfileViewController: UIViewController {

    var activeUser : User? = nil
    @IBOutlet weak var labelName : UILabel!
    @IBOutlet weak var labelSurname : UILabel!
    @IBOutlet weak var labelEmail : UILabel!
    @IBOutlet weak var labelBirthdate : UILabel!
    @IBOutlet weak var segmentedControlGender : UISegmentedControl!
    
    //MARK: LifeCycle
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let user = activeUser
        {
            setupUIForCurrentUser()
        }
        else
        {
            activeUser = User.currentUser()
            setupUIForCurrentUser()
        }
    }
    
    //MARK: Actions
    func setupUIForCurrentUser()
    {
        var user = activeUser
        labelName.text = user?.name
        labelSurname.text = user?.surname
        labelEmail.text = user?.email
        
        var formatter : NSDateFormatter = NSDateFormatter()
        formatter.dateFormat = "dd MMM yyyy"
        
        if let b = user?.birthDate
        {
            var birtdhDateString : String? = formatter.stringFromDate(b)
            NSLog("%@", birtdhDateString!)
            labelBirthdate.text = birtdhDateString
        }
        else
        {
            labelBirthdate.text = ""
        }
        
        if let gender = user?.gender
        {
            segmentedControlGender.selectedSegmentIndex = (user?.gender)!.rawValue
        }
    }
    
    func setupUIForUser(user : User?)
    {
        activeUser = user
    }
    
    //MARK: TableViewDelegate

}
