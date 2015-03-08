//
//  DetailViewController.swift
//  Week5Day2Session3
//
//  Created by Hasan Soysal on 08/03/15.
//  Copyright (c) 2015 Hasan Soysal. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController, UIScrollViewDelegate {

    @IBOutlet weak var scrollView : UIScrollView!
    @IBOutlet weak var pageControl : UIPageControl!
    
    
    var images : Array<String> = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        images = ["iphone6", "joker", "iphone6"]
        pageControl.numberOfPages = images.count
        pageControl.currentPage = 0
        
        // iOS 7 uyumluluğu için gelen bir property. Otomatik inset ayarlanmasın diye false yaptım.
        self.automaticallyAdjustsScrollViewInsets = false
        //Daha fazla bilgi için:
        /*https://developer.apple.com/library/ios/documentation/UserExperience/Conceptual/TransitionGuide/AppearanceCustomization.html*/
    }
    
    override func viewDidLayoutSubviews() {
        
        super.viewDidLayoutSubviews()
        setupScrollView()
        
    }
    
    func setupScrollView()
    {
        scrollView.frame = CGRect(x: 0, y: scrollView.frame.origin.y, width: self.view.bounds.size.width, height: scrollView.frame.size.height)
        scrollView.pagingEnabled = true
        setupImages()
    }
    
    func setupImages()
    {
        for each in scrollView.subviews
        {
            each.removeFromSuperview()
        }
        
        var counter : Int = 0
        for each in images
        {
            var X:CGFloat = CGFloat(counter) * scrollView.bounds.size.width
            var Y:CGFloat = 0.0
            var w:CGFloat = scrollView.bounds.size.width
            var h:CGFloat = scrollView.bounds.size.height
            
            var imageView : UIImageView = UIImageView()
            imageView.image = UIImage(named: images[counter])
            imageView.frame = CGRect(x: X, y: Y, width: w, height: h)
            imageView.contentMode = UIViewContentMode.ScaleToFill
            scrollView.addSubview(imageView)
        
            scrollView.contentSize = CGSize(width: X + w, height: h)
            counter++
        }
        
    }
    //MARK: - Scrollview
    
    func scrollViewDidEndDecelerating(scrollView: UIScrollView) {
        
        var offset = scrollView.contentOffset
        var pageNumber = Int(CGFloat(offset.x) / CGFloat(scrollView.bounds.size.width))
        pageControl.currentPage = pageNumber
        
    }

}






