//
//  ProductDetailViewController.swift
//  iOSCaseStudyApp
//

import UIKit
import Kingfisher
import HCSStarRatingView

class ProductDetailViewController: UIViewController {

    @IBOutlet weak var headerImageView: UIImageView!
    @IBOutlet weak var headerLabel: UILabel!
    @IBOutlet weak var productImageView: UIImageView!
    @IBOutlet weak var brandNameLabel: UILabel!
    @IBOutlet weak var priceLabel: UILabel!
    @IBOutlet weak var productNameLabel: UILabel!
    @IBOutlet weak var variantNameLabel: UILabel!
    @IBOutlet weak var rattingView: HCSStarRatingView!
    @IBOutlet weak var addToBagButton: UIButton!
    @IBOutlet weak var backButton: UIButton!
    
    var slot: ProductResponse.Slot?
    var product: ProductResponse?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.setupShadowAndBorder()
        self.showHeaderData()
        self.showDetailData()
    }
    
}

//MARK: - Custom Method Extension
fileprivate extension ProductDetailViewController {
    
    func setupShadowAndBorder() {
        self.backButton.layer.borderWidth = 1.0
        self.backButton.layer.borderColor = UIColor.darkGray.cgColor
        
        addToBagButton.layer.shadowOpacity = 0.5
        addToBagButton.layer.shadowRadius = 3.0
        addToBagButton.layer.shadowColor = UIColor.black.cgColor
        addToBagButton.layer.shadowOffset = CGSize(width: 0, height: 1)
    }
    
    func showHeaderData() {
        if let banner = product?.banner {
            if let url = URL(string: banner){
                self.headerImageView.kf.setImage(with: url)
            }
        }
        if let subheader =  slot?.slotDescription {
            self.headerLabel.text = subheader
        }
    }
    
    func showDetailData() {
        if let url = URL(string: slot?.imageURL ?? "") {
            self.productImageView.kf.indicatorType = .activity
            self.productImageView.kf.setImage(with: url)
        }
        self.brandNameLabel.text = (slot?.name ?? "").uppercased()
        self.productNameLabel.text = slot?.brand ?? ""
        self.priceLabel.text = "$" + (slot?.price ?? "0.0")
        self.addToBagButton.setTitle("ADD TO BAG", for: .normal)
        self.addToBagButton.backgroundColor = #colorLiteral(red: 0.8078431373, green: 0.05882352941, blue: 0.05490196078, alpha: 1)
        self.rattingView.value = CGFloat(float_t(slot?.rating ?? "0.0") ?? 0.0)
        self.variantNameLabel.text = slot?.variant ?? ""
    }
 
}

//MARK: - Button Extension
fileprivate extension ProductDetailViewController {
    
    @IBAction func actionAddtoBag(_ sender: UIButton) {
        self.addToBagButton.setTitle("ADDING...", for: .normal)
    }
    
    @IBAction func actionBackButton(_ sender: UIButton) {
        self.navigationController?.popViewController(animated: true)
    }
    
}
