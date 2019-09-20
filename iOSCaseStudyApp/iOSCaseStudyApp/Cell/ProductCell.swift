//
//  ProductCell.swift
//  iOSCaseStudyApp
//
//

import UIKit

class ProductCell: UICollectionViewCell {
    
    @IBOutlet weak var productImageView: UIImageView!
    @IBOutlet weak var productLabel: UILabel!
    @IBOutlet weak var productBackgroundView: UIView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        showShadow()
    }
    
    func showShadow() {
        productBackgroundView.layer.shadowOpacity = 0.2
        productBackgroundView.layer.shadowRadius = 3.0
        productBackgroundView.layer.cornerRadius = 15
        productBackgroundView.layer.shadowColor = UIColor.black.cgColor
        productBackgroundView.layer.shadowOffset = CGSize(width: 0, height: 1)
    }
    
    override var isHighlighted: Bool {
        didSet {
            if isHighlighted {
                productBackgroundView.layer.borderWidth = 2
                productBackgroundView.layer.borderColor = #colorLiteral(red: 0.8078431373, green: 0.05882352941, blue: 0.05490196078, alpha: 1)
                self.productLabel.textColor = #colorLiteral(red: 0.8078431373, green: 0.05882352941, blue: 0.05490196078, alpha: 1)
            } else {
                productBackgroundView.layer.borderWidth = 0
                productBackgroundView.layer.borderColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 0)
                self.productLabel.textColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
            }
        }
    }
    
    func updateCellData(slot: ProductResponse.Slot?)  {
        self.productLabel.text = slot?.brand?.uppercased()
        self.productImageView.kf.indicatorType = .activity
        if let url = URL(string: slot?.imageURL ?? "") {
            self.productImageView.kf.setImage(with: url)
        }
    }
}
