//
//  StoryBookViewModel.swift
//  VillainVanquisher
//
//  Created by Eric Lee on 2023/06/16.
//

import SwiftUI
import CoreData

class SavedStoryBookViewModel: ObservableObject{
    
    let container: NSPersistentContainer
    @Published var savedStoryBooks: [StoryBookEntity] = []
    
    init(){
        container = NSPersistentContainer(name: "StoryBookContainer")
        container.loadPersistentStores { description, error in
            if let error = error{
                print("ERROR - LOADING CORE DATA. \(error)")
            }
        }
        fetchStoryBooks()
    }
    
    func fetchStoryBooks(){
        let request = NSFetchRequest<StoryBookEntity>(entityName: "StoryBookEntity")
        do {
            savedStoryBooks = try container.viewContext.fetch(request)
        } catch let error {
            print("ERROR - FETCHING STORYBOOKS. \(error) ")
        }
    }
    
    func addStoryBook(storyBook: StoryBook){
        let newStoryBook = StoryBookEntity(context: container.viewContext)
        newStoryBook.title = storyBook.title
        newStoryBook.date = storyBook.date
        newStoryBook.contents = storyBook.contents
        saveData()
    }
    
    func saveData(){
        do {
            try container.viewContext.save()
            fetchStoryBooks()
        } catch let error {
            print("ERROR - SAVING. \(error)")
        }
    }
    
    func clearData(){
        let request = NSFetchRequest<NSFetchRequestResult>(entityName: "StoryBookEntity")
        let deleteRequest = NSBatchDeleteRequest(fetchRequest: request)
        do {
            try container.viewContext.execute(deleteRequest)
            savedStoryBooks.removeAll()
        } catch let error {
            print("ERROR - CLEARING DATA. \(error)")
        }
    }
    
}
