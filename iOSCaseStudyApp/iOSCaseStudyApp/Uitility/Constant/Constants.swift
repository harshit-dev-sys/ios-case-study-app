

import Foundation
import UIKit
struct Constants {
    
    // MARK: - Colors
    
    struct Colors {
        static let shadowNormal = UIColor(red: 151.0 / 255.0, green: 151.0 / 255.0, blue: 151.0 / 255.0, alpha: 1.0)
    }
    
    // MARK: - Storyboard
    
    struct Storyboard {
        
        static let STORYBOARD_MAIN = "Main"
        
        static func getControllerInstance(identifier: String, storyBoard: String) -> UIViewController {
            return UIStoryboard(name: storyBoard, bundle: nil).instantiateViewController(withIdentifier: identifier)
        }
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
    
}
