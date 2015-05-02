//
//  RoundedButton.swift
//  PhotoLibrary
//
//  Created by Suleyman Calik on 02/05/15.
//  Copyright (c) 2015 Wissen. All rights reserved.
//

import UIKit

@IBDesignable class RoundedButton: UIButton {

    @IBInspectable var cornerRadius:CGFloat = 0 {
        willSet {
            // değişken değişmeden önce çalışır
            // newValue ifadesi yeni değeri verir
        }
        didSet {
            // değişken değiştikten sonra çalışır
            // oldValue ifadesi eski değeri verir
            refreshUI()
        }
    }
    
    
    func refreshUI() {
        layer.cornerRadius = cornerRadius
    }
    
    
}













