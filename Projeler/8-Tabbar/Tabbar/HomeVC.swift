//
//  HomeVC.swift
//  Tabbar
//
//  Created by Suleyman Calik on 28/03/15.
//  Copyright (c) 2015 Wissen. All rights reserved.
//

import UIKit

class HomeVC: UIViewController {
    
    
    @IBOutlet weak var lblDate: UILabel!
    
    
    
    func getSavedDate() {
        var userD = NSUserDefaults.standardUserDefaults()
        if let savedDate = userD.objectForKey(keyDate) as? NSDate {
            var dateString =  NSDateFormatter.localizedStringFromDate(savedDate, dateStyle:NSDateFormatterStyle.FullStyle, timeStyle:NSDateFormatterStyle.ShortStyle)
            lblDate.text = dateString
        }
        else {
            lblDate.text = "Kayıtlı Tarih Yok!"
        }
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        println("HomeVC viewDidLoad")
    }
    
    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
        
        println("HomeVC viewWillAppear")
    }
    
    override func viewDidAppear(animated: Bool) {
        super.viewDidAppear(animated)
        
        println("HomeVC viewDidAppear")
        getSavedDate()
    }
    
    
    override func viewWillDisappear(animated: Bool) {
        super.viewWillDisappear(animated)
        
        println("HomeVC viewWillDisappear")

    }
    
    override func viewDidDisappear(animated: Bool) {
        super.viewDidDisappear(animated)
        
        println("HomeVC viewDidDisappear")
    }
    
    
    
    
}