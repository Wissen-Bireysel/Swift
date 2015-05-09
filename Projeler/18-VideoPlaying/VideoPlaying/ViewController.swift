//
//  ViewController.swift
//  VideoPlaying
//
//  Created by Suleyman Calik on 09/05/15.
//  Copyright (c) 2015 Wissen. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    
    
    override func prepareForSegue(segue:UIStoryboardSegue, sender:AnyObject?) {
        
        if let videoVC = segue.destinationViewController as? VideoPlayerVC {
            switch segue.identifier! {
            case "Dosya":
                videoVC.videoType = .Local
            case "Stream":
                videoVC.videoType = .Stream
            default:
                break
            }
        }
        
    }


    
    @IBAction func goBack(unwindSegue:UIStoryboardSegue) {
        
    }
    

}









