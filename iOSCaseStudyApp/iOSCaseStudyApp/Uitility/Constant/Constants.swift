

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
    }
    
    // MARK: - Cell Identifiers
    struct CellIdentifier {
        
        static let PRODUCT_CELL = "ProductCell"
        static let HEADER_COLLECTION_VIEW = "HeaderCollectionView"
        static let PRODUCT_DETAIL_CELL = "ProductDetailCell"
    }
    
    // MARK: - Cell NAME
    struct CellName {
        
        static let PRODUCT_CELL = "ProductCell"
        static let HEADER_COLLECTION_VIEW = "HeaderCollectionView"
        static let PRODUCT_DETAIL_CELL = "ProductDetailCell"
    }
    
    //MARK: - ViewControllet Identifiers
    struct ViewControlletIdentifier {
        
        static let PRODUCT_LIST_VIEWCONTROLLER = "ProductListViewController"
        static let PRODUCT_DETAIL_VIEWCONTROLLER = "ProductDetailViewController"
    }
    
    struct strings {
        static let Error = "Error"
        static let APIFailedError = "File could not be located at the given url"
        static let SomethingWentWrong = "Something went wrong"
    }
}
