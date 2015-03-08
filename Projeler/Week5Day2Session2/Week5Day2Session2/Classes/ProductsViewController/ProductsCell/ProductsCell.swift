//
//  ProductsCell.swift
//  Week5Day2Session2
//
//  Created by Hasan Soysal on 08/03/15.
//  Copyright (c) 2015 Hasan Soysal. All rights reserved.
//

import UIKit

class ProductsCell: UICollectionViewCell {
    
    @IBOutlet weak var labelName : UILabel!
    @IBOutlet weak var imageViewProductImage : UIImageView!
    
    func setupUIFor(product: Products)
    {
        labelName.text = product.name
        imageViewProductImage.image = product.image
        self.backgroundColor = UIColor.greenColor()
    }
    
}
