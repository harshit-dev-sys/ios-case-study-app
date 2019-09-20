//
//  ServiceManager.swift
//  iOSCaseStudyApp
//

import UIKit

class ServiceManager {
    
    @discardableResult class func getProductList(success: ((ProductResponse, Int) -> Void)? = nil, failure: ((ErrorResponse) -> Void)? = nil) -> APIManager {
        
        let manager = APIManager()
        manager.request(jsonFile: "9-product-grid", success: { (jsonData, statusCode) in
            if let modal = try? JSONDecoder().decode(ProductResponse.self, from: jsonData) {
                success?(modal, statusCode)
            } else if let error = try? JSONDecoder().decode(ErrorResponse.self, from: jsonData) {
                failure?(error)
                handleError(json: jsonData)
            } else {
                handleError(json: jsonData)
            }
        }, failure: { error in
            failure?(error)
        })
        return manager
    }
    
    // MARK: - Error show
    class func handleError(json: Data) {
        if let error = try? JSONDecoder().decode(ErrorResponse.self, from: json) {
            print(Constants.strings.Error, error.errorMessage)
        } else {
             print(Constants.strings.Error)
        }
    }
    
}
