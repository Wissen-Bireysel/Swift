//
//  ViewController.swift
//  CollectionView
//
//  Created by Suleyman Calik on 28/03/15.
//  Copyright (c) 2015 Wissen. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var collectionView: UICollectionView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
        collectionView.dataSource = self
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}



//MARK: CollectionView Methods

extension ViewController:UICollectionViewDataSource, UICollectionViewDelegate {
    
    var images:[String] {
        return ["facebook", "twitter", "google", "linkedin"]
    }
    
    
    
    func numberOfSectionsInCollectionView(collectionView: UICollectionView) -> Int {
        return images.count
    }
    
    func collectionView(collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 10
    }
    
    
    func collectionView(collectionView: UICollectionView, cellForItemAtIndexPath indexPath: NSIndexPath) -> UICollectionViewCell {
        
        var cell = collectionView.dequeueReusableCellWithReuseIdentifier("SocialCell", forIndexPath:indexPath) as SocialCell
        
        cell.imageView.image = UIImage(named:images[indexPath.section])
        
        return cell
        
    }
    
    
}


















