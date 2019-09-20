//
//  HomeViewController.swift
//  iOSCaseStudyApp
//

import UIKit
import Kingfisher

class ProductViewController: UIViewController {
    
    @IBOutlet weak var collectionView: UICollectionView!
    
    fileprivate var productData: ProductResponse?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.cellRegistered()
        self.showProductListData()
    }
}

// MARK: - Custome Method extension
extension ProductViewController {
    
    func cellRegistered() {
        collectionView.register(UINib(nibName: Constants.CellName.HEADER_COLLECTION_VIEW, bundle: nil), forSupplementaryViewOfKind: UICollectionView.elementKindSectionHeader, withReuseIdentifier:Constants.CellIdentifier.HEADER_COLLECTION_VIEW)
        
        collectionView.register(UINib.init(nibName: Constants.CellName.PRODUCT_CELL, bundle: nil), forCellWithReuseIdentifier: Constants.CellIdentifier.PRODUCT_CELL)
    }
    
    func showProductListData() {
        ServiceManager.getProductList(success: { (productData, status) in
            self.productData = productData
            self.collectionView.reloadData()
        }) { (error) in
        }
    }
}

// MARK: - UICollectionViewDataSource protocol
extension ProductViewController: UICollectionViewDataSource, UICollectionViewDelegate, UICollectionViewDelegateFlowLayout {
    
    func numberOfSectionsInCollectionView(collectionView: UICollectionView) -> Int {
        return 1
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, referenceSizeForHeaderInSection section: Int) -> CGSize {
        let size = CGSize(width: self.view.frame.width, height: 200)
        return size
    }
    
    func collectionView(_ collectionView: UICollectionView, viewForSupplementaryElementOfKind kind: String, at indexPath: IndexPath) -> UICollectionReusableView {
        
        var header: HeaderCollectionView!
        
        if kind == UICollectionView.elementKindSectionHeader {
            header = collectionView.dequeueReusableSupplementaryView(ofKind: kind, withReuseIdentifier: Constants.CellIdentifier.HEADER_COLLECTION_VIEW, for: indexPath as IndexPath) as? HeaderCollectionView
            header.updateHeaderData(productData: self.productData)
        }
        return header
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return self.productData?.slots?.count ?? 0
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        if let cell = collectionView.dequeueReusableCell(withReuseIdentifier: Constants.CellIdentifier.PRODUCT_CELL, for: indexPath as IndexPath) as? ProductCell {
            let slot = self.productData?.slots?[indexPath.row]
            cell.updateCellData(slot: slot)
            return cell
        } else {
            return UICollectionViewCell()
        }
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        
        
        
        if let controller = UIStoryboard.init(name:Constants.Storyboard.STORYBOARD_MAIN, bundle: Bundle.main).instantiateViewController(withIdentifier: Constants.ViewControlletIdentifier.PRODUCT_DETAIL_VIEWCONTROLLER) as? ProductDetailViewController {
            controller.slot = productData?.slots?[indexPath.row]
        self.navigationController?.pushViewController(controller, animated: true)
            
        }
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let width = collectionView.bounds.width / 3.0
        let height = width + 25
        return CGSize(width: width - 1, height: height)
    }
}

