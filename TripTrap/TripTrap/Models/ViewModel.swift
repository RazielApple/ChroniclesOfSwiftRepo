//
//  ViewModel.swift
//  TripTrap
//
//  Created by シェイミ on 07/12/2022.
//

import Foundation
import MapKit

class ViewModel: ObservableObject {
    //    TODO: The location manager should be initialised here, but I cannot get it to work if it is.
    //    @Published var locationManager = LocationManager()
    @Published var attrac: Attractions? = nil //just used to see if it works

    
    @MainActor //without main actor, if u try to do line 27, it throws a warning.
               //An alternative solution could be: call fetch in the view that needs the call
               //and assign fetchedData into Attraction variable in the same view
    func fetch() async throws{
        guard let urlString = URL(string: "https://api.opentripmap.com/0.1/en/places/autosuggest?name=cinema&radius=1000&lon=14.26811&lat=40.85216&apikey=5ae2e3f221c38a28845f05b66c319f2c844159541f0810838b11d4db") else {return}
        
        var request: URLRequest = URLRequest(url: urlString)
        request.httpMethod = "GET"
        let (data,_) = try await URLSession.shared.data(for: request)
        let fetchedData = try JSONDecoder().decode(Attractions.self, from: data)
        attrac = fetchedData
    }

}

