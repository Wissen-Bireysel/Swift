//
//  CampaignsVC.swift
//  Segues
//
//  Created by Suleyman Calik on 21/03/15.
//  Copyright (c) 2015 Wissen. All rights reserved.
//

import UIKit

class CampaignsVC: UIViewController {

    
    var mainVC:ViewController!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func closePage(sender: UIButton) {
        
        
//        var mainVC = presentedViewController as ViewController
        println(mainVC.acilisSayisi)
        mainVC.acilisSayisi++
        
        dismissViewControllerAnimated(true, completion:nil)
    }
    
    
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
