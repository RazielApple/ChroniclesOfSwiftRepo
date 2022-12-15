//
//  NewTripPlanViewswift
//  TripTrap
//
//  Created by Htet Myat Moe Myint Kyeal on 14/12/22.
//

import SwiftUI

struct NewTripPlanView: View {
    
    //Dummy image
    var image: String
    
    @State private var tripPrice: String = ""
    @State private var tripName: String = ""
    @State var selectedTripDate: Date = .now
    @State private var tripDescription: String = ""
    @State private var maxPeople: String = ""
    @State private var meetingPoint: String = ""

    @Environment(\.dismiss) private var dismiss: DismissAction

    var body: some View {
        NavigationStack {
            Form {
                Image(image)
                    .resizable()
                    .aspectRatio(4/3, contentMode: .fit)
                    .cornerRadius(8)
                
                Section {
                    
                    TextField("Trip Name", text: $tripName)
                    
                    LabeledContent {
                        TextField("€", text: $tripPrice)
                            .keyboardType(.numberPad)
                    } label: {
                        Text("Trip Fees")
                    }
                    
                    TripDatePicker(selectedTripDate: $selectedTripDate)
                    
                    LabeledContent {
                        TextField("Max people", text: $maxPeople)
                            .keyboardType(.numberPad)
                    } label: {
                        Text("Maximum People")
                    }
                    
                    LabeledContent {
                        TextField("Meeting Point", text: $meetingPoint)
                    } label: {
                        Text("Meeting Point")
                    }
                }
                
                Section {
                    TextEditor(text: $tripDescription)
                } header: {
                     Text("About the Trip")
                }
            }
            .navigationTitle("New Trip")
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                ToolbarItem(placement: .navigationBarLeading) {
                    Button("Cancel") {
                        dismiss()
                    }
                }
                
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button("Save") {
                        //TODO: write save call
                        addTrip()
                    }
//                    .disabled(
//                        tripName.isEmpty || tripPrice.isEmpty || maxPeople.isEmpty || meetingPoint.isEmpty || tripDescription.isEmpty
//                    )
                }
            }
        }
    }
    
    func addTrip() {
        // Yes, this check makes no sense... Will fix later
        if (tripName.isEmpty || tripPrice.isEmpty || maxPeople.isEmpty || meetingPoint.isEmpty || tripDescription.isEmpty) {
            return
        } else {
            vm.addTrip(name: tripName,
                       meetingPoint: meetingPoint,
                       price: tripPrice == "" ? Double(tripPrice)! : 0,
                       detail: tripDescription,
                       maxPeople: maxPeople == "" ? Int(maxPeople)! : 10,
                       date: selectedTripDate)
            for item in vm.savedEntities {
                print(item.name ?? "fail")
            }
        }
        
    }
}

struct NewTripPlanView_Previews: PreviewProvider {
    static var previews: some View {
        NewTripPlanView(image: "guinness")
    }
}
