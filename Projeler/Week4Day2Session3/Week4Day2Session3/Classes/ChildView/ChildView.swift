//
//  ChildView.swift
//  Week4Day2Session3
//
//  Created by Hasan Soysal on 01/03/15.
//  Copyright (c) 2015 Hasan Soysal. All rights reserved.
//

import UIKit


protocol ChildViewDelegate
{
    func iAmHungry()
    func iAmHungryAndIWantTo(food : String)
    func iAmBoredCanIGoOut()->Bool
}


class ChildView: UIView {


    var delegate : ChildViewDelegate? = nil

    
    //MARK: Actions
    @IBAction func buttonPerformDelegateMethod1 (sender : AnyObject)
    {
        delegate?.iAmHungry()
    }
    
    @IBAction func buttonPerformDelegateMethod2 (sender : AnyObject)
    {
        delegate?.iAmHungryAndIWantTo("Sandwich")
    }
    
    @IBAction func buttonPerformDelegateMethod3 (sender : AnyObject)
    {
        var permission = delegate?.iAmBoredCanIGoOut()
        if permission == true
        {
            UIAlertView(title: "Yaşasın", message: "Dışarı çıkabilirim artık", delegate: nil, cancelButtonTitle: "Tamam").show()
        }
    }
    
    func doYourHomework ()
    {
        UIAlertView(title: "Ev Ödevi", message: "Tamam birazdan başlıyorum", delegate: nil, cancelButtonTitle: "Tamam").show()
    }
}
