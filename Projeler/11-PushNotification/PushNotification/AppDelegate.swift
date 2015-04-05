//
//  AppDelegate.swift
//  PushNotification
//
//  Created by Suleyman Calik on 05/04/15.
//  Copyright (c) 2015 Wissen. All rights reserved.
//

import UIKit
import Parse

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    // Uygulama ilk açıldığında çalışan method
    func application(application: UIApplication, didFinishLaunchingWithOptions launchOptions: [NSObject: AnyObject]?) -> Bool {
        
        //////////////////////////////////////////////////
        //Parse'ı çalıştırıyoruz
        Parse.setApplicationId("Wxi1TROcMyzgJmhc5oMaEtkXiBtjyZDKO1qtHknZ", clientKey:"7geQa0wkLCXNNaXeEIggFtf1NvtRdWAnClsmRWw9")
        //////////////////////////////////////////////////
        
        
        
        //////////////////////////////////////////////////
        // Push Notification için izin alıyoruz
        var userNotificationTypes =
            UIUserNotificationType.Alert |
            UIUserNotificationType.Badge |
            UIUserNotificationType.Sound
        var settings = UIUserNotificationSettings(forTypes:userNotificationTypes, categories:nil)
        
        application.registerUserNotificationSettings(settings)
        
        application.registerForRemoteNotifications()
        //////////////////////////////////////////////////
        
        
        
        
        return true
    }

   
    func application(application: UIApplication, didRegisterForRemoteNotificationsWithDeviceToken deviceToken: NSData) {
        
        //////////////////////////////////////////////////
        // Push için izin alındı
        // Device token değerini sunucuya gönderiyoruz
        var parsePushManager = PFInstallation.currentInstallation()
        parsePushManager.setDeviceTokenFromData(deviceToken)
        parsePushManager.saveInBackgroundWithBlock { (success:Bool, error:NSError!) -> Void in
            if success {
                println("Device Token server'a gönderildi.")
            }
            else {
                println("Device token server'a gönderilemedi. Çünkü: \(error.description)")
            }
        }
        //////////////////////////////////////////////////
        
    }
    
    
    func application(application: UIApplication, didFailToRegisterForRemoteNotificationsWithError error: NSError) {
        println("Push Noti için hata: \(error.description)")
    }
    
    
    


}















