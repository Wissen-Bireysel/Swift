//
//  RecentsViewController.swift
//  Week5Day1Session3
//
//  Created by Hasan Soysal on 07/03/15.
//  Copyright (c) 2015 Hasan Soysal. All rights reserved.
//

import UIKit

class RecentsViewController: UIViewController {

    @IBOutlet weak var imageViewJoker : UIImageView!

    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        var tapGesture = UITapGestureRecognizer(target: self, action: Selector("imageViewTapped:"))
        tapGesture.numberOfTapsRequired = 1
        tapGesture.numberOfTouchesRequired = 1
        imageViewJoker.addGestureRecognizer(tapGesture)
        
        NSLog("Responds?: %@", self.respondsToSelector("hasTwoParams:secondParam:"))
    }
    
    func imageViewTapped(gesture : UITapGestureRecognizer)
    {
        UIAlertView(title: "Hey", message: "You tapped the image", delegate: nil, cancelButtonTitle: "Tamam").show()
    }
    func hasTwoParams (gesture : UITapGestureRecognizer, secondParam: String)
    {
        
    }
    
    @IBAction func myViewTap(gesture : UITapGestureRecognizer)
    {
        UIAlertView(title: "Hey", message: "You tapped the main view", delegate: nil, cancelButtonTitle: "Tamam").show()

    }

    
    
    @IBAction func viewLongPressed(sender: UILongPressGestureRecognizer) {
    
        UIAlertView(title: "Hey", message: "You long pressed the view", delegate: nil, cancelButtonTitle: "Tamam").show()

    }
    
    
    
    
    
    

}
