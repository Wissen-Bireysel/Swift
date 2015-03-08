//
//  ScrollViewController.swift
//  Week5Day2Session3
//
//  Created by Hasan Soysal on 08/03/15.
//  Copyright (c) 2015 Hasan Soysal. All rights reserved.
//

import UIKit

class ScrollViewController: UIViewController, UIScrollViewDelegate {

    @IBOutlet weak var scrollView : UIScrollView!
    @IBOutlet weak var viewContent : UIView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    override func viewDidAppear(animated: Bool) {
        scrollView.flashScrollIndicators()
        UIView.animateWithDuration(1, animations: { () -> Void in
            self.scrollView.scrollRectToVisible(CGRect(x: 0, y: self.viewContent.bounds.size.height-5, width: 1, height: 1), animated: false)
            
        }) { (completed) -> Void in
            self.scrollView.scrollRectToVisible(CGRect(x: 0, y: 0, width: 1, height: 1), animated: true)
        }
    }

    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        scrollView.frame = self.view.bounds
        scrollView.contentSize = CGSize(width: scrollView.bounds.size.width, height: viewContent.bounds.size.height)
    }
    
    //MARK: - Scrollview
    
    func scrollViewDidEndDecelerating(scrollView: UIScrollView) {
        NSLog("%@", __FUNCTION__)
    }
    func scrollViewDidEndDragging(scrollView: UIScrollView, willDecelerate decelerate: Bool) {
        NSLog("%@", __FUNCTION__)
    }
    func scrollViewDidScroll(scrollView: UIScrollView) {
//        NSLog("%@", __FUNCTION__)
        NSLog("%@", scrollView.contentOffset.y)
    }
    func scrollViewWillBeginDecelerating(scrollView: UIScrollView) {
        NSLog("%@", __FUNCTION__)
    }
    func scrollViewWillEndDragging(scrollView: UIScrollView, withVelocity velocity: CGPoint, targetContentOffset: UnsafeMutablePointer<CGPoint>) {
        NSLog("%@", __FUNCTION__)
    }
    
    
}






