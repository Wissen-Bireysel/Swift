//
//  AppDelegate.swift
//  LocalNotification
//
//  Created by Suleyman Calik on 05/04/15.
//  Copyright (c) 2015 Wissen. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?


    func application(application: UIApplication, didFinishLaunchingWithOptions launchOptions: [NSObject: AnyObject]?) -> Bool {

        var notificationTypes =
            UIUserNotificationType.Alert |
            UIUserNotificationType.Badge |
            UIUserNotificationType.Sound
        var settings = UIUserNotificationSettings(forTypes:notificationTypes , categories:nil)
        application.registerUserNotificationSettings(settings)
        
        return true
    }


}

