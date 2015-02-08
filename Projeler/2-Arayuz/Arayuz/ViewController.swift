//
//  ViewController.swift
//  Arayuz
//
//  Created by Suleyman Calik on 08/02/15.
//  Copyright (c) 2015 Wissen. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var lblHosgeldiniz: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func butonaBasıldı(sender: AnyObject) {
        println("Butona Basildi!")
        lblHosgeldiniz.text = "Hoşgeldiniz!"
    }
    
}











