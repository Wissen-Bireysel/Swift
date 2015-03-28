//
//  SettingsVC.swift
//  Tabbar
//
//  Created by Suleyman Calik on 28/03/15.
//  Copyright (c) 2015 Wissen. All rights reserved.
//

import UIKit


let keyDate = "keyDate"


class SettingsVC: UIViewController {
    
    @IBOutlet weak var datePicker: UIDatePicker!
    @IBOutlet weak var btnSave: UIButton!
    
    
    @IBAction func btnSaveTapped(sender:UIButton) {
        
        var selectedDate:NSDate = datePicker.date
        
        var userD = NSUserDefaults.standardUserDefaults()
        userD.setObject(selectedDate, forKey:keyDate)
        userD.synchronize()
        
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        println("SettingsVC viewDidLoad")
    }
    
    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
        
        println("SettingsVC viewWillAppear")
    }
    
    override func viewDidAppear(animated: Bool) {
        super.viewDidAppear(animated)
        
        println("SettingsVC viewDidAppear")
    }
    
    
    override func viewWillDisappear(animated: Bool) {
        super.viewWillDisappear(animated)
        
        println("SettingsVC viewWillDisappear")
        
    }
    
    override func viewDidDisappear(animated: Bool) {
        super.viewDidDisappear(animated)
        
        println("SettingsVC viewDidDisappear")
    }
}