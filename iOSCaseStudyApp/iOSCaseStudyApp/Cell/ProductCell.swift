//
//  ProductCell.swift
//  iOSCaseStudyApp
//
//  Created by MAC HD on 18/09/19.
//  Copyright © 2019 MAC HD. All rights reserved.
//

import UIKit

class ProductCell: UICollectionViewCell {
    @IBOutlet weak var productImageView: UIImageView!
    @IBOutlet weak var productLabel: UILabel!
    @IBOutlet weak var productBackground: UIView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        productImageView.clipsToBounds = true
        productImageView.layer.cornerRadius = 15
       
        productBackground.clipsToBounds = false
        productBackground.layer.shadowColor = UIColor.gray.cgColor
        productBackground.layer.shadowOpacity = 1
        productBackground.layer.shadowOffset = CGSize.zero
        productBackground.layer.shadowRadius = 5
        productBackground.layer.cornerRadius = 15
        productBackground.layer.shadowPath = UIBezierPath(roundedRect: productBackground.bounds, cornerRadius: 10).cgPath
        // Initialization code
    }
    
    func didSelectedItem(){
        productImageView.clipsToBounds = true
        productImageView.layer.cornerRadius = 15
        productBackground.layer.shadowColor = UIColor.clear.cgColor
        productBackground.layer.shadowOpacity = 0
        productBackground.layer.cornerRadius = 15
        productBackground.layer.borderWidth = 2
        productBackground.layer.borderColor = UIColor.red.cgColor
    }

}
