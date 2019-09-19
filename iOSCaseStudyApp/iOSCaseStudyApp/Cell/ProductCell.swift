//
//  ProductCell.swift
//  iOSCaseStudyApp
//
//

import UIKit

class ProductCell: UICollectionViewCell {
    
    @IBOutlet weak var productImageView: UIImageView!
    @IBOutlet weak var productLabel: UILabel!
    @IBOutlet weak var productBackground: UIView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        showShadow()
    }
    
    func showShadow() {
        productBackground.layer.shadowOpacity = 0.2
        productBackground.layer.shadowRadius = 3.0
        productBackground.layer.cornerRadius = 15
        productBackground.layer.shadowColor = UIColor.black.cgColor
        productBackground.layer.shadowOffset = CGSize(width: 0, height: 1)
    }
    
    override var isSelected: Bool {
        didSet {
            if isSelected {
                productBackground.layer.borderWidth = 2
                productBackground.layer.borderColor = #colorLiteral(red: 0.8078431373, green: 0.05882352941, blue: 0.05490196078, alpha: 1)
                self.productLabel.textColor = #colorLiteral(red: 0.8078431373, green: 0.05882352941, blue: 0.05490196078, alpha: 1)
            } else {
                productBackground.layer.borderWidth = 0
                productBackground.layer.borderColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 0)
                self.productLabel.textColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
            }
        }
    }
    
    func updateCellData(productData: ProductResponse.Slot?)  {
        let slot = productData
        self.productLabel.text = slot?.brand?.uppercased()
        self.productImageView.kf.indicatorType = .activity
        if let url = URL(string: slot?.imageURL ?? ""){
            self.productImageView.kf.setImage(with: url)
        }
    }
}
