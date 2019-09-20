//
//  HeaderCollectionView.swift
//  iOSCaseStudyApp
//

import UIKit

class HeaderCollectionView: UICollectionReusableView {
    
    @IBOutlet weak var headerImageView: UIImageView!
    @IBOutlet weak var headerLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    func updateHeaderData(productData: ProductResponse?) {
        if let banner = productData?.banner {
            if let url = URL(string: banner){
                self.headerImageView.kf.setImage(with: url)
            }
        }
        if let subheader =  productData?.subheader {
            self.headerLabel.text = subheader
        }
    }
}
