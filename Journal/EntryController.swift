//
//  EntryController.swift
//  Journal
//
//  Created by Caleb Hicks on 10/1/15.
//  Copyright © 2015 DevMountain. All rights reserved.
//

import Foundation

class EntryController {
    
    static let shared = EntryController()
    private init() {}
    
    func addEntryWith(title: String, text: String) {
        Entry(title: title, text: text)
        saveToPersistentStorage()
    }
    
    func remove(entry: Entry) {
        entry.managedObjectContext?.delete(entry)
        saveToPersistentStorage()
    }
    
    func update(entry: Entry, with title: String, text: String) {
        entry.title = title
        entry.text = text
        saveToPersistentStorage()
    }
	
	// MARK: - Persistence
    private func saveToPersistentStorage() {
       try! CoreDataStack.context.save()
        
    }
	
}
