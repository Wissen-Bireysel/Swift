//
//  ProductsViewController.swift
//  Week5Day2Session2
//
//  Created by Hasan Soysal on 08/03/15.
//  Copyright (c) 2015 Hasan Soysal. All rights reserved.
//

import UIKit

class ProductsViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {


    var products : Array<Products> = []
    @IBOutlet weak var collectionView : UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        var image = UIImage(named: "iphone6")
        var product1 = Products(name: "Apple Mac Pro", category: Category.Bilgisayar, image: image)
        var product2 = Products(name: "iPhone 6", category: Category.Bilgisayar, image: image)
        var product3 = Products(name: "iPhone 5", category: Category.Bilgisayar, image: image)
        var product4 = Products(name: "Fırın", category: Category.EvAletleri, image: image)
        
        products = [product1, product2, product3, product4]
    }
    
    //MARK: - COllection view
    
    func numberOfSectionsInCollectionView(collectionView: UICollectionView) -> Int {
        return 5
    }
    func collectionView(collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return products.count
    }
    
    func collectionView(collectionView: UICollectionView, cellForItemAtIndexPath indexPath: NSIndexPath) -> UICollectionViewCell {
        var cell : ProductsCell = collectionView.dequeueReusableCellWithReuseIdentifier("ProductsCell", forIndexPath: indexPath) as ProductsCell
        
        cell.setupUIFor( products[indexPath.row] )
        return cell
    }
    
    func collectionView(collectionView: UICollectionView, didSelectItemAtIndexPath indexPath: NSIndexPath) {
        UIAlertView(title: "Ürün", message: "\(products[indexPath.row].name)", delegate: nil, cancelButtonTitle: "Tamam").show()
    }
    
    //MARK: - Flow Layout
    
    
    func collectionView(collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAtIndexPath indexPath: NSIndexPath) -> CGSize {
        var width = (collectionView.bounds.size.width - 40 ) / 2.0
        var size : CGSize = CGSize(width: width, height: width)
        return size
    }
    
    
}






