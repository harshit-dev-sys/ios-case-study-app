//
//  AppDelegate.swift
//  Subaj
//
//  Created by Vishal on 04/12/18.
//  Copyright © 2018 Techracers. All rights reserved.
//

import Foundation
import UIKit
struct Constants {
    // MARK: - Webservice
    struct Webservice {
        static let collectionListdata = ""
        
    }

    // Mark: - AppDelagate
    struct AppDelegate {
        static let object = UIApplication.shared.delegate
    }

    // MARK: - Colors

    struct Colors {
        static let black = UIColor(red: 56.0 / 255.0, green: 56.0 / 255.0, blue: 64.0 / 255.0, alpha: 1.0)
        static let Gray = UIColor(red: 203.0 / 255.0, green: 207.0 / 255.0, blue: 218.0 / 255.0, alpha: 1.0)
        static let lightGray = UIColor(red: 229.0 / 255.0, green: 231.0 / 255.0, blue: 236.0 / 255.0, alpha: 1.0)
        static let offWhite = UIColor(red: 234.0 / 255.0, green: 236.0 / 255.0, blue: 240.0 / 255.0, alpha: 1.0)
        static let orange = UIColor(red: 255.0 / 255.0, green: 96.0 / 255.0, blue: 0.0 / 255.0, alpha: 1.0)
        static let TextGray = UIColor(red: 38.0 / 255.0, green: 39.0 / 255.0, blue: 48.0 / 255.0, alpha: 1.0)
        static let clear = UIColor(red: 0.0 / 255.0, green: 0.0 / 255.0, blue: 0.0 / 255.0, alpha: 0.0)

        static let placeHolder = UIColor(red: 182.0 / 255.0, green: 187.0 / 255.0, blue: 201.0 / 255.0, alpha: 1.0)
        static let green = UIColor(red: 0.0 / 255.0, green: 128.0 / 255.0, blue: 0.0 / 255.0, alpha: 1.0)
        static let red = UIColor(red: 238.0 / 255.0, green: 67.0 / 255.0, blue: 89.0 / 255.0, alpha: 1.0)
        
        static let gradian1 = UIColor(red: 211.0 / 255.0, green: 28.0 / 255.0, blue: 206.0 / 255.0, alpha: 1.0)
        static let gradian2 = UIColor(red: 249.0 / 255.0, green: 80.0 / 255.0, blue: 82.0 / 255.0, alpha: 1.0)
        
        static let viewGradian1 = UIColor(red: 245.0 / 255.0, green: 62.0 / 255.0, blue: 88.0 / 255.0, alpha: 1.0)
        static let viewGradian2 = UIColor(red: 206.0 / 255.0, green: 15.0 / 255.0, blue: 146.0 / 255.0, alpha: 1.0)
        
        // rgb(0,128,0)

        static let backgroundGray = #colorLiteral(red: 0.9058823529, green: 0.9137254902, blue: 0.9333333333, alpha: 1)
        static var greenHighlighted: UIColor { return  #colorLiteral(red: 0.08235294118, green: 0.9254901961, blue: 0.5764705882, alpha: 1) }
    }

    // MARK: - Storyboard

    struct Storyboard {
        static let STORYBOARD_MAIN = "Main"

        static func getControllerInstance(identifier: String, storyBoard: String) -> UIViewController {
            return UIStoryboard(name: storyBoard, bundle: nil).instantiateViewController(withIdentifier: identifier)
        }
    }

    // MARK: - View Controller Identifiers

    struct VCIdentifier {
        static let HomeViewController = "HomeViewController"

        //SendTokenViewController
    }

    // MARK: - Cell Identifiers

    struct CellIdentifier {
        
        static let PRODUCT_CELL = "ProductCell"
        static let HEADER_COLLECTION_VIEW = "HeaderCollectionView"
    }
    
    struct CellName {
        
        static let PRODUCT_CELL = "ProductCell"
        static let HEADER_COLLECTION_VIEW = "HeaderCollectionView"
    }
    
    struct FontNames {
        static var CircularStd_Black: String { return "CircularStd-Black" }
        static var CircularStd_BlackItalic: String { return "CircularStd-BlackItalic" }
        static var CircularStd_Bold: String { return "CircularStd-Bold" }
        static var CircularStd_BoldItalic: String { return "CircularStd-BoldItalic" }
        static var CircularStd_Book: String { return "CircularStd-Book" }
        static var CircularStd_BookItalic: String { return "CircularStd-BookItalic" }
        static var CircularStd_Medium: String { return "CircularStd-Medium" }
        static var CircularStd_MediumItalic: String { return "CircularStd-MediumItalic" }
    }
}
