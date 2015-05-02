//
//  BFAlert.swift
//  Buddify
//
//  Created by Suleyman Calik on 21/09/14.
//  Copyright (c) 2014 Buddify. All rights reserved.
//

import UIKit


typealias AlertBlock = (index:Int) -> ()


var internalAlert = BFAlert()

class BFAlert: NSObject , UIAlertViewDelegate {
    
    var alertHandler:AlertBlock?
    
    class func showAlert(sender:UIViewController, title:String?, message:String?, actions:Array<String>, handler:AlertBlock?) {
        
        let iosVersion = NSString(string:UIDevice.currentDevice().systemVersion).doubleValue
        if iosVersion >= 8 {
            showOnIOS8(sender, style:UIAlertControllerStyle.Alert, title: title, message:message, actions:actions, handler: handler)
        }
        else {
            showOnIOS7(sender, title:title, message:message, actions: actions, handler:handler)
        }
    }

    private class func showOnIOS7(sender:UIViewController, title: String?, message: String? , var actions:Array<String>, handler:AlertBlock?) {
        
        var cancelTitle = actions.first
        if let cancel = cancelTitle {

            var alertView = UIAlertView(title: title, message: message, delegate:internalAlert, cancelButtonTitle: cancelTitle)

            actions.removeAtIndex(0)
            for action in actions {
                alertView.addButtonWithTitle(action)
            }
            alertView.show()
            
            internalAlert.alertHandler = handler
        }
        else {
            var alert = UIAlertView(title: title, message: message, delegate: self, cancelButtonTitle: cancelTitle)
        }
    }

    private class func showOnIOS8(sender:UIViewController, style: UIAlertControllerStyle,title: String?, message: String? , actions:Array<String>, handler:AlertBlock?) {
        var alert = UIAlertController(title:title, message:message, preferredStyle:style)
        var tag = 0
        for actionTitle in actions {
            var action = BFAlertAction(title: actionTitle, style: UIAlertActionStyle.Default, handler: { (action:UIAlertAction!) -> Void in
                if handler != nil {
                    var bfAction = action as! BFAlertAction
                    handler!(index:bfAction.tag)
                }
            })
            action.tag = tag++
            println(action.tag)
            alert.addAction(action)
        }
        sender.presentViewController(alert, animated:true, completion:nil)
    }

    func alertView(alertView: UIAlertView, clickedButtonAtIndex buttonIndex: Int) {
        if self.alertHandler != nil {
            self.alertHandler!(index: buttonIndex)
        }
    }
}



class BFAlertAction : UIAlertAction {
    var tag:Int = 0
}
