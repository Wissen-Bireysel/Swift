//
//  ViewController.swift
//  KullaniciGirisi
//
//  Created by Suleyman Calik on 08/02/15.
//  Copyright (c) 2015 Wissen. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var label:UILabel!
    @IBOutlet weak var textfield: UITextField!
    @IBOutlet weak var button: UIButton!
    
    var girisYapildi:Bool = false

    @IBAction func butonaBasildi(sender: UIButton) {
        
        if girisYapildi {
            // cikis islemleri
            label.text = "Giriş Yapınız"
            textfield.hidden = false
            textfield.text = ""
            button.setTitle("Giriş Yap", forState: UIControlState.Normal)
            button.setTitleColor(UIColor.blueColor(), forState: UIControlState.Normal)
            girisYapildi = false

        }
        else {
            // giris islemleri
            if countElements(textfield.text) > 0 {
                
                label.text = "Hoşgeldin \(textfield.text)"
                textfield.hidden = true
                button.setTitle("Çıkış Yap", forState: UIControlState.Normal)
                button.setTitleColor(UIColor.redColor(), forState:UIControlState.Normal)
                girisYapildi = true
                
            }
        }
        
    }
    

}






