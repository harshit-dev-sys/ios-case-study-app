//
//  APIManager.swift
//  iOSCaseStudyApp
//

import Foundation

class APIManager: NSObject {
    
     func request(jsonFile: String, success: ((Data, Int) -> Void)? = nil, failure: ((ErrorResponse) -> Void)? = nil) {
        guard let fileUrl = Bundle.main.url(forResource: jsonFile, withExtension: "json") else {
            let error = ErrorResponse.init(errorMessage:"Error", error: "File could not be located at the given url")
            failure?(error)
            return
        }
        do {
            // Get data from file
            let data = try Data(contentsOf: fileUrl)
            success?(data , (200))
            
        } catch {
            // Print error if something went wrong
            print("Error: \(error)")
            let error = ErrorResponse.init(errorMessage:"Error", error: "Something went wrong")
            failure?(error)
        }
    }
}
