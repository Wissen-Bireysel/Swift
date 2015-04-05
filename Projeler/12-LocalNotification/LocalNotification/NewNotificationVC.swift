//
//  NewNotificationVC.swift
//  LocalNotification
//
//  Created by Suleyman Calik on 05/04/15.
//  Copyright (c) 2015 Wissen. All rights reserved.
//

import UIKit

class NewNotificationVC: UIViewController {

    
    @IBOutlet weak var txtTitle: UITextField!
    @IBOutlet weak var datePicker: UIDatePicker!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        var saveButton = UIBarButtonItem(title:"Kaydet", style:UIBarButtonItemStyle.Plain, target:self, action:"saveNotification")
        navigationItem.rightBarButtonItem = saveButton
        
        title = "Yeni Alarm"
    }
    
    override func viewDidAppear(animated: Bool) {
        super.viewDidAppear(animated)
        
        txtTitle.becomeFirstResponder()
    }
    
    
    func saveNotification() {
        if countElements(txtTitle.text) > 0 {
            var selectedDate = datePicker.date
            var currentDate = NSDate()
            
            var compareResult:NSComparisonResult = currentDate.compare(selectedDate)
            
            
            if compareResult == NSComparisonResult.OrderedAscending {

                // local notification oluştur
                var notification = UILocalNotification()
                notification.alertBody = txtTitle.text
                notification.fireDate = selectedDate
                UIApplication.sharedApplication().scheduleLocalNotification(notification)
                
                navigationController?.popViewControllerAnimated(true)
            }
            else {
                UIAlertView(title:"İleri tarih seçiniz.", message:nil, delegate:nil, cancelButtonTitle:"Tamam").show()
                // hata mesajı göster
            }
            
        }
        else {
            UIAlertView(title:"Başlık giriniz.", message:nil, delegate:nil, cancelButtonTitle:"Tamam").show()
            // hata mesajı göster
        }
    }


}














