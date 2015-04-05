//
//  NotificationsVC.swift
//  LocalNotification
//
//  Created by Suleyman Calik on 05/04/15.
//  Copyright (c) 2015 Wissen. All rights reserved.
//

import UIKit

class NotificationsVC: UIViewController {
    
    //MARK: - Properties

    @IBOutlet weak var tableView: UITableView!
    
    var notifications = [UILocalNotification]()
    
    
    //MARK: - Utility Methods

    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.dataSource = self
    }
    
    override func viewDidAppear(animated: Bool) {
        super.viewDidAppear(animated)
        
        getNotifications()
    }

    @IBAction func refresh(sender: UIBarButtonItem) {
        getNotifications()
    }
    
    
    func getNotifications() {
        
        notifications.removeAll(keepCapacity:false)
        
        var notiObjects = UIApplication.sharedApplication().scheduledLocalNotifications
        for notiObject in notiObjects {
            if let notification = notiObject as? UILocalNotification {
                notifications.append(notification)
            }
            else {
                println(notiObject)
            }
        }
        
        tableView.reloadData()
    }
    
    
}

//MARK: - TableView Methods

extension NotificationsVC: UITableViewDataSource {
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return notifications.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        var cell = tableView.dequeueReusableCellWithIdentifier("NotificationCell") as UITableViewCell
        
        var notification = notifications[indexPath.row]
        
        cell.textLabel?.text = notification.alertBody

        var dateString = NSDateFormatter.localizedStringFromDate(notification.fireDate!, dateStyle: NSDateFormatterStyle.LongStyle, timeStyle:NSDateFormatterStyle.MediumStyle)
        cell.detailTextLabel?.text = dateString
        
        return cell
    }
    
}










