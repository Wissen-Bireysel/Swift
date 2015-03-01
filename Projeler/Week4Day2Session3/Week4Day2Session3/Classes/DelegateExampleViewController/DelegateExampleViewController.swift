//
//  DelegateExampleViewController.swift
//  Week4Day2Session3
//
//  Created by Hasan Soysal on 01/03/15.
//  Copyright (c) 2015 Hasan Soysal. All rights reserved.
//


import UIKit

class DelegateExampleViewController: UIViewController, ChildViewDelegate {

    @IBOutlet weak var viewChild : ChildView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        viewChild.delegate = self
    }
    
    override func viewDidAppear(animated: Bool) {
        viewChild.doYourHomework()
    }
    
    //MARK: Delegate Methods
    
    func iAmHungry() {
        
        UIAlertView(title: "Tamam", message: "Yemek akşam 5te", delegate: nil, cancelButtonTitle: "OK").show()
    }
    
    func iAmHungryAndIWantTo(food: String) {
        
        UIAlertView(title: "Tamam", message: "Hemen sana \(food) hazırlıyorum", delegate: nil, cancelButtonTitle: "OK").show()
    }
    
    func iAmBoredCanIGoOut() -> Bool {
        
        return true
    }


}
