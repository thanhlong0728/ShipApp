//
//  CategoryCellTableViewCell.swift
//  WeShop
//
//  Created by Mac on 20/09/2024.
//

import UIKit

class CategoryCell: UITableViewCell {
    
    @IBOutlet weak var categoryBg: UIImageView!
    @IBOutlet weak var categoryTitle: UILabel!

    func updateViews(category: Category){
        categoryBg.image = UIImage(named: category.imageName)
        categoryTitle.text = category.title
    }

}
