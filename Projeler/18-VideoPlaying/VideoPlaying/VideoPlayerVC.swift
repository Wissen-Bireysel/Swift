//
//  VideoPlayerVC.swift
//  VideoPlaying
//
//  Created by Suleyman Calik on 09/05/15.
//  Copyright (c) 2015 Wissen. All rights reserved.
//

import UIKit
import MediaPlayer

enum VideoType {
    case Local
    case Stream
}


class VideoPlayerVC: UIViewController {

    
    var videoType:VideoType = .Local
    var player:MPMoviePlayerController!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        var url:NSURL!
        
        switch videoType {
        case .Local:
            var path = NSBundle.mainBundle().pathForResource("NasaVideo", ofType:"m4v")
            println(path)
            url = NSURL(fileURLWithPath:path!)
        case .Stream:
            url = NSURL(string:"http://www.nasa.gov/multimedia/nasatv/NTV-Public-IPS.m3u8")
        }
        
        if let videoPlayer = MPMoviePlayerController(contentURL:url) {
            player = videoPlayer
            
            var size = self.view.frame.width
            player.view.frame = CGRect(x:0, y:50, width:size, height:size)
            self.view.addSubview(player.view)
            
            player.repeatMode = MPMovieRepeatMode.One
            player.controlStyle = MPMovieControlStyle.Fullscreen
            
            player.play()
        }
        

    }



}

















