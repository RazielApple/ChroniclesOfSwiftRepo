//
//  ViewModel.swift
//  TripTrap
//
//  Created by シェイミ on 07/12/2022.
//

import Foundation
import MapKit

class ViewModel: ObservableObject {
    @Published var attractionsList: [Feature] = []

 
}

extension ViewModel {
    
    @MainActor
    func fetch(searchText: String) async throws {
            let postData = NSData(data: "".data(using: String.Encoding.utf8)!)

            let request = NSMutableURLRequest(url: NSURL(string: "https://api.opentripmap.com/0.1/en/places/autosuggest?name=\(searchText)&radius=10000&lon=14.26811&lat=40.85216&apikey=5ae2e3f221c38a28845f05b66c319f2c844159541f0810838b11d4db")! as URL,
                                                cachePolicy: .useProtocolCachePolicy,
                                                timeoutInterval: 10.0)
            request.httpMethod = "GET"
            request.httpBody = postData as Data

            let session = URLSession.shared
            let dataTask = session.dataTask(with: request as URLRequest, completionHandler: { (data, response, error) -> Void in
              if (error != nil) {
                print(error!)
              } else {
                let httpResponse = response as? HTTPURLResponse
                  print(httpResponse!)
              }
                

                let fetchedData = try? JSONDecoder().decode(Attractions.self, from: data!)
                
                if let featuresArray = fetchedData?.features {
                    DispatchQueue.main.async {
                        self.attractionsList = featuresArray
                        //                print(self.attractionsList)
                    }
                }
            })
            dataTask.resume()
        }
}

