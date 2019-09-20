//
//  ProductDetailViewController.swift
//  iOSCaseStudyApp
//

import UIKit
import Kingfisher

class ProductDetailViewController: UIViewController {
   
    @IBOutlet weak var tableView: UITableView!
    
    var slot: ProductResponse.Slot?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.cellRegistered()
    }
}

// MARK: - Custome Method extension
extension ProductDetailViewController {
    
    func cellRegistered() {

        tableView.register(UINib(nibName: Constants.CellName.PRODUCT_DETAIL_CELL, bundle: nil), forCellReuseIdentifier: Constants.CellIdentifier.PRODUCT_DETAIL_CELL)
        self.tableView.reloadData()
    }
    
}

// MARK: - UITableview delegate datasource Method extension
extension ProductDetailViewController: UITableViewDelegate,UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        if let cell = tableView.dequeueReusableCell(withIdentifier: Constants.CellIdentifier.PRODUCT_DETAIL_CELL) as? ProductDetailCell {
            cell.updateCellData(slot: slot)
            return cell
        }
        return UITableViewCell()
    }
}
