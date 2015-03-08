//
//  ScrollViewController.swift
//  Week5Day2Session3
//
//  Created by Hasan Soysal on 08/03/15.
//  Copyright (c) 2015 Hasan Soysal. All rights reserved.
//

import UIKit

class ScrollViewController: UIViewController {

    @IBOutlet weak var scrollView : UIScrollView!
    @IBOutlet weak var viewContent : UIView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()



    }

    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        scrollView.frame = self.view.bounds
        scrollView.contentSize = CGSize(width: scrollView.bounds.size.width, height: viewContent.bounds.size.height)
    }
}
