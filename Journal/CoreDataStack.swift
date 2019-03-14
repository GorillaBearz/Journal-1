//
//  CoreDataStack.swift
//  Journal
//
//  Created by Carson Buckley on 3/14/19.
//  Copyright © 2019 DevMountain. All rights reserved.
//

import Foundation
import CoreData

class CoreDataStack {
    static let container: NSPersistentContainer = {
        let container = NSPersistentContainer(name: "Journal")
        container.loadPersistentStores(completionHandler: { (_, error) in
            if let error = error {
                fatalError("Failed to load PersistentStores")
            }
        })
        return container
    }()
    
    static var context: NSManagedObjectContext {
        return container.viewContext
    }
}
