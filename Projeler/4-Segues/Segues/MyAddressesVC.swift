//
//  MyAddressesVC.swift
//  Segues
//
//  Created by Suleyman Calik on 21/03/15.
//  Copyright (c) 2015 Wissen. All rights reserved.
//

import UIKit

class MyAddressesVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func showPaymentScreen(sender: UIButton) {
        
        
        var paymentVC = storyboard?.instantiateViewControllerWithIdentifier("PaymentVC") as UIViewController
        navigationController?.pushViewController(paymentVC, animated:true)
        
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
