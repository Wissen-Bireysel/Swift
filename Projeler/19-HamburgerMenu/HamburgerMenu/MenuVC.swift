//
//  MenuVC.swift
//  HamburgerMenu
//
//  Created by Suleyman Calik on 10/05/15.
//  Copyright (c) 2015 Wissen. All rights reserved.
//

import UIKit

class MenuVC: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        slidingViewController().topViewAnchoredGesture = ECSlidingViewControllerAnchoredGesture.Tapping | ECSlidingViewControllerAnchoredGesture.Panning

        clearsSelectionOnViewWillAppear = false
    }

    /*
    override func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        
        slidingViewController().resetTopViewAnimated(true)
    }
    */

}
