//
//  Category.swift
//  WeShop
//
//  Created by Mac on 20/09/2024.
//

import Foundation
struct Category{
    private(set) public var title: String
    private(set) public var imageName: String
    
    init(title: String, imageName: String) {
        self.title = title
        self.imageName = imageName
    }
}
