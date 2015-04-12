//
//  Contact.swift
//  CoreData
//
//  Created by Suleyman Calik on 12/04/15.
//  Copyright (c) 2015 Wissen. All rights reserved.
//

import Foundation
import CoreData

class Contact: NSManagedObject {

    @NSManaged var name: String
    @NSManaged var number: String
    @NSManaged var email: String

}
