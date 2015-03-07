//
//  FavoritesViewController.swift
//  Week5Day1Session3
//
//  Created by Hasan Soysal on 07/03/15.
//  Copyright (c) 2015 Hasan Soysal. All rights reserved.
//

import UIKit

class FavoritesViewController: UIViewController {

    @IBOutlet weak var buttonDetail : UIButton!
    override func viewDidLoad() {
        
        super.viewDidLoad()
        
        buttonDetail.layer.cornerRadius = buttonDetail.bounds.size.width/2.0
        buttonDetail.layer.borderColor = UIColor.redColor().CGColor
        buttonDetail.layer.borderWidth = 1
        
        NSLog("%@", __FUNCTION__)
    }
    override func viewDidAppear(animated: Bool) {
        NSLog("%@", __FUNCTION__)
    }
    override func viewDidDisappear(animated: Bool) {
        NSLog("%@", __FUNCTION__)
    }
    override func viewWillAppear(animated: Bool) {
        NSLog("%@", __FUNCTION__)
    }
    
    override func viewWillDisappear(animated: Bool) {
        NSLog("%@", __FUNCTION__)
    }
    override func viewDidLayoutSubviews() {
        NSLog("%@", __FUNCTION__)
    }
    override func viewWillLayoutSubviews() {
        NSLog("%@", __FUNCTION__)
    }

}





