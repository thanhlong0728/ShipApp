//
//  ProductVC.swift
//  WeShop
//
//  Created by Mac on 24/09/2024.
//

import UIKit

class ProductsVC: UIViewController, UICollectionViewDataSource, UICollectionViewDelegate {
    
    @IBOutlet weak var productCollectionView: UICollectionView!
    private(set) public var products = [Product]()

    override func viewDidLoad() {
        super.viewDidLoad()
        productCollectionView.dataSource = self
        productCollectionView.delegate = self
    }
    
    func initProducts(category : Category) {
        products = DataService.instance.getProducts(forCategoryTitle: category.title)
        navigationItem.title = category.title
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return products.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "ProductCell", for: indexPath) as? ProductCell{
            let product = products[indexPath.row]
            cell.updateViews(product: product)
            return cell
        }
        return ProductCell()
    }
    
}
