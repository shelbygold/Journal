//
//  CoreDataStack.swift
//  Journal
//
//  Created by shelby gold on 3/14/19.
//  Copyright © 2019 DevMountain. All rights reserved.
//

import Foundation
import CoreData

class CoreDataStack{
    
    static let container: NSPersistentContainer = {
    let container = NSPersistentContainer(name: "Journal")
        container.loadPersistentStores(completionHandler: { (_, error) in
            if let error = error {
                fatalError("failed to load peristent stores")
            }
        })
        return container
    }()
    
    static var context: NSManagedObjectContext {
        return container.viewContext
    }
}

