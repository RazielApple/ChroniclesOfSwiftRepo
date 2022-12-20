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
    
    @MainActor
    func fetch(searchText: String) async throws {
        let postData = NSData(data: "".data(using: String.Encoding.utf8)!)
        let openTripMapAPIKey = "5ae2e3f221c38a28845f05b66c319f2c844159541f0810838b11d4db"
        let radius = "10000"
        let longitude = "14.26811"
        let latitude = "40.85216"
        
        let request = NSMutableURLRequest(url: NSURL(string: "https://api.opentripmap.com/0.1/en/places/autosuggest?name=\(searchText)&radius=\(radius)&lon=\(longitude)&lat=\(latitude)&apikey=\(openTripMapAPIKey)")! as URL,
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
    
    
    // The following func and enum are used by getWikipediaImage()
    
    private func getMD5Hash(itemName: String) -> String {
        return String(itemName.md5)
    }
    
    private enum md5Errors: Error {
        case empty
        case missingFormatting
    }
    
    func getWikipediaImage(imageName: String) throws -> (String?) {
        // This is the base address that the image filename should be appended to.
        let baseURL = "https://upload.wikimedia.org/wikipedia/commons/"
        var response: String? = nil
        
        // The image string should start with "File:" which should be stripped.
        // If it doesn't start with File: it is likely an incorrect filename, so throw an error.
        
        do {
            guard !imageName.isEmpty else { throw md5Errors.empty }
            guard imageName.contains("File:") else { throw md5Errors.missingFormatting }
            
            let strippedName = imageName.replacingOccurrences(of: "File:", with: "")
            let underscoredName = strippedName.replacingOccurrences(of: " ", with: "_")
            
            // In order to retrieve the image, the first and second chars from the MD5 hash are required in the format /a/ab/
            let md5 = getMD5Hash(itemName: underscoredName)
            let a = String(md5[md5.index(md5.startIndex, offsetBy: 0)])
            let b = String(md5[md5.index(md5.startIndex, offsetBy: 1)])
            
            response = baseURL + a + "/" + a + b + "/" + underscoredName
            
        } catch md5Errors.empty {
            print("Error: the string passed to getWikipediaImage() was empty")
        } catch md5Errors.missingFormatting {
            print("Error: the string passed to getWikipediaImage() didn't contain \"File:\" so it was likely incorrect")
        }
        
        return response
    }


    
    
}



