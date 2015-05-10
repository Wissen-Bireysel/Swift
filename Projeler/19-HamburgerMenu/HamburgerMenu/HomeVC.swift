//
//  HomeVC.swift
//  HamburgerMenu
//
//  Created by Suleyman Calik on 10/05/15.
//  Copyright (c) 2015 Wissen. All rights reserved.
//

import UIKit

class HomeVC: UIViewController {
    
    override func viewDidAppear(animated: Bool) {
        super.viewDidAppear(animated)
        
        view.addGestureRecognizer(slidingViewController().panGesture)
    }

    
    @IBAction func openMenu(sender: UIButton) {
        slidingViewController().anchorTopViewToRightAnimated(true)
    }



}

