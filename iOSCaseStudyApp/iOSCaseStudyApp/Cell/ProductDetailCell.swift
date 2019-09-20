//

import UIKit

class ProductDetailCell: UITableViewCell {
    
    @IBOutlet weak var productImageView: UIImageView!
    @IBOutlet weak var brandNameLabel: UILabel!
    @IBOutlet weak var priceLabel: UILabel!
    @IBOutlet weak var ratingImageView: UIImageView!
    @IBOutlet weak var productNameLabel: UILabel!
    @IBOutlet weak var addToBagButton: UIButton!
    @IBOutlet weak var backButton: UIButton!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        self.backButton.layer.borderWidth = 1.0
        self.backButton.layer.borderColor = UIColor.darkGray.cgColor
        
        addToBagButton.layer.shadowOpacity = 0.5
        addToBagButton.layer.shadowRadius = 3.0
        addToBagButton.layer.shadowColor = UIColor.black.cgColor
        addToBagButton.layer.shadowOffset = CGSize(width: 0, height: 1)
    }
    
    func updateCellData(slot: ProductResponse.Slot?) {
        
        self.productNameLabel.text = slot?.brand
        self.brandNameLabel.text = slot?.name
        self.priceLabel.text = "$"+(slot?.price ?? "0.0")
        if let url = URL(string: slot?.imageURL ?? "") {
            self.productImageView.kf.indicatorType = .activity
            self.productImageView.kf.setImage(with: url)
        }
        self.addToBagButton.setTitle("ADD TO BAG", for: .normal)
        self.addToBagButton.backgroundColor = #colorLiteral(red: 0.8078431373, green: 0.05882352941, blue: 0.05490196078, alpha: 1)
    }
    
    @IBAction func actionAddtoBag(_ sender: UIButton) {
        
    }
    
    @IBAction func actionBackButton(_ sender: UIButton) {
        self.addToBagButton.setTitle("ADDING...", for: .normal)
    }
}
