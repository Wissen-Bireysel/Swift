//
//  ViewController.swift
//  Segues
//
//  Created by Suleyman Calik on 21/03/15.
//  Copyright (c) 2015 Wissen. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    var acilisSayisi = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func openCategories(sender: UIButton) {
        println("Butona Basildi!")
        
        performSegueWithIdentifier("Categories", sender:nil)
    }
    
    @IBAction func showCampaigns(sender: UIButton) {
        var campaignsVC = storyboard?.instantiateViewControllerWithIdentifier("CampaignsVC") as CampaignsVC
        campaignsVC.mainVC = self
        
        presentViewController(campaignsVC, animated:true, completion:nil)
    }
    
    


}













