//
//  APIManager.swift
//  iOSCaseStudyApp
//

import Foundation

class APIManager: NSObject {
    
    func request(jsonFile: String, success: ((Data, Int) -> Void)? = nil, failure: ((ErrorResponse) -> Void)? = nil) {
        
        guard let fileUrl = Bundle.main.url(forResource: jsonFile, withExtension: "json") else {
            let error = ErrorResponse.init(errorMessage: Constants.strings.Error, error: Constants.strings.APIFailedError)
            failure?(error)
            return
        }
        do {
            // Get data from file
            let data = try Data(contentsOf: fileUrl)
            success?(data , (200))
            
        } catch {
            // error if something went wrong
            let error = ErrorResponse.init(errorMessage:Constants.strings.Error, error: Constants.strings.SomethingWentWrong)
            failure?(error)
        }
    }
}
