//
//  Entry+Convenience.swift
//  Journal
//
//  Created by Carson Buckley on 3/14/19.
//  Copyright © 2019 DevMountain. All rights reserved.
//

import Foundation
import CoreData

extension Entry {
    
    @discardableResult
    
    convenience init(titleParameter: String, textParameter: String, timestampParameter: Date = Date(), managedObjectContext: NSManagedObjectContext = CoreDataStack.context) {
        self.init(context: managedObjectContext)
        self.title = titleParameter
        self.text = textParameter
        self.timestamp = timestampParameter
    }
}

