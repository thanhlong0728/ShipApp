//
//  ProductCell.swift
//  WeShop
//
//  Created by Mac on 20/09/2024.
//

import UIKit

class ProductCell: UICollectionViewCell {
    @IBOutlet weak var productImage: UIImageView!
    @IBOutlet weak var productTile: UILabel!
    @IBOutlet weak var productPrice: UILabel!
    
    func updateViews(product: Product)  {
        productImage.image = UIImage(named: product.imageName)
        productTile.text = product.title
        productPrice.text = product.price
    }
}
