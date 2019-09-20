//
//  ErrorResponse.swift
//  iOSCaseStudyApp
//

import Foundation

struct ErrorResponse: Codable {
    let errorMessage: String
    let error: String
    
    enum CodingKeys: String, CodingKey {
        case errorMessage = "message"
        case error = "error"
    }
}

