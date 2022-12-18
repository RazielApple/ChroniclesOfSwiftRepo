//
//  ViewModel.swift
//  TripTrap
//
//  Created by シェイミ on 07/12/2022.
//

import Foundation
import MapKit
import CommonCrypto

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
                    }
                }
            })
            dataTask.resume()
        }
    
    
    private func getMD5Hash(itemName: String) -> String {
        return String(itemName.md5)
    }
    
    func getWikipediaImage(imageName: String) -> (String) {
        // This is the base address that the image filename should be appended to.
        let baseURL = "https://upload.wikimedia.org/wikipedia/commons/"
        
        let underscoredName = imageName.replacingOccurrences(of: " ", with: "_")
        let md5 = getMD5Hash(itemName: underscoredName)
        let a = String(md5[md5.index(md5.startIndex, offsetBy: 0)])
        let b = String(md5[md5.index(md5.startIndex, offsetBy: 1)])
        
        return baseURL + a + "/" + a + b + "/" + underscoredName
    }
    
    
}



