//
//  Persistence.swift
//  TripTrap
//
//  Created by シェイミ on 07/12/2022.
//

import CoreData

class PersistenceController: ObservableObject {

//    let container: NSPersistentCloudKitContainer
    let localContainer: NSPersistentContainer

//    init(inMemory: Bool = false) {
//        container = NSPersistentCloudKitContainer(name: "TripTrap")
//        if inMemory {
//            container.persistentStoreDescriptions.first!.url = URL(fileURLWithPath: "/dev/null")
//        }
//        container.loadPersistentStores(completionHandler: { (storeDescription, error) in
//            if let error = error as NSError? {
//                // Replace this implementation with code to handle the error appropriately.
//                // fatalError() causes the application to generate a crash log and terminate. You should not use this function in a shipping application, although it may be useful during development.
//
//                /*
//                 Typical reasons for an error here include:
//                 * The parent directory does not exist, cannot be created, or disallows writing.
//                 * The persistent store is not accessible, due to permissions or data protection when the device is locked.
//                 * The device is out of space.
//                 * The store could not be migrated to the current model version.
//                 Check the error message to determine what the actual problem was.
//                 */
//                fatalError("Unresolved error \(error), \(error.userInfo)")
//            }
//        })
//        container.viewContext.automaticallyMergesChangesFromParent = true
//    }
    
    
    @Published var savedEntities: [TripEntity] = []
     
     
     init(){
         localContainer = NSPersistentContainer(name: "TripTapContainer")
         localContainer.loadPersistentStores { (description, error) in
             if let error = error{
                 print("EEROR LOADING CORE DATA. \(error)")
             }
             else{
                 print("Successfully loaded core data!")
             }
         }
         fetchTrip()
     }
     
     func fetchTrip(){
         let request = NSFetchRequest<TripEntity>(entityName: "TripEntity")
         
         do{
             savedEntities = try localContainer.viewContext.fetch(request)
         }catch let error{
             print("Error fetching. \(error)")
         }
     }
     
    func addTrip(name: String, meetingPoint: String, price: Double, detail: String, maxPartecipants: Int, date: Date){
         let newTrip = TripEntity(context: localContainer.viewContext)
        newTrip.name = name
        newTrip.meetingPoint = meetingPoint
        newTrip.price = price
        newTrip.detail = detail
        newTrip.maxParticipants = Int32(maxPartecipants)
        newTrip.date = date
         saveData()
     }
     
     
     func deleteTrip(indexSet: IndexSet) {
         guard let index = indexSet.first else { return }
         let entity = savedEntities[index]
         localContainer.viewContext.delete(entity)
         saveData()
     }
     

   
     func updateTrip(entity: Trip){

      
         saveData()
     }
     
     func saveData(){
         do{
             try localContainer.viewContext.save()
             fetchTrip()
         } catch let error{
             print("Error saving. \(error)")
         }
     }
     
     
     
     
 }

 var vm = PersistenceController()

