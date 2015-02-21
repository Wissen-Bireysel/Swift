//
//  ViewController.swift
//  Week3Day1ClosureExample
//
//  Created by Hasan Soysal on 21/02/15.
//  Copyright (c) 2015 Hasan Soysal. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    
    override func viewDidAppear(animated: Bool) {
        super.viewDidAppear(animated)

        println("Line 1")
        changeBackgroundColorTo(UIColor.redColor(), duration: 5) { () -> () in
            println("Heyy Animation Completed")
        }
        println("Line 2")
        
        getContent { (content) -> () in
            println("End of code")
        }
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func changeBackgroundColorTo(color: UIColor, duration: NSTimeInterval, closure : ()->())
    {
        println("Animations will start")
        UIView.animateWithDuration(duration, animations: { () -> Void in
            self.view.backgroundColor = color
            
        }) { (completed) -> Void in
            println("Animations did stop")
            closure()
            
        }
    }
    
    func getContent   (closure: (content:NSData) -> ())
    {
        //var imageView : UIImageView? = nil
        
        println("Data will download")
            var myData : NSData = NSData(contentsOfURL: NSURL(string: "http://wallpaper-download.net/wallpapers/random-wallpapers-ios-7-background-wallpaper-34701.jpg")!)!

        println("Data did download")
        closure(content: myData)
        
    }

}















