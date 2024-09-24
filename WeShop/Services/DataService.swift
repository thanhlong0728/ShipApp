//
//  DataService.swift
//  WeShop
//
//  Created by Mac on 20/09/2024.
//

import Foundation
import Alamofire

class DataService{
    static let instance = DataService()
    
    func getCategories() -> [Category] {
        let categories = [
            Category(title: "Furniture", imageName: "furniture.png"),
            Category(title: "Food", imageName: "food.jpg"),
            Category(title: "Housewares", imageName: "housewares.jpg"),
            Category(title: "Toy", imageName: "toy.jpg"),
        ]
        AF.request("https://google.com", method: .get).response { response in
            debugPrint("====>")
            debugPrint(response)
        }
        return categories
    }
    
    func getProducts(forCategoryTitle title: String ) -> [Product] {
        switch title {
        case "Furniture":
            return [
                Product(title: "Chair", price: "30$", imageName: "chair.png"),
                Product(title: "Commode", price: "100$", imageName: "commode.png"),
                Product(title: "Miror", price: "20$", imageName: "miror.png"),
                Product(title: "Table", price: "40$", imageName: "table.png")
            ]
        case "Housewares":
            return [
                Product(title: "Electric cooker", price: "20$", imageName: "electric-cooker.jpg"),
                Product(title: "Electric cooker", price: "20$", imageName: "electric-cooker.jpg"),
                Product(title: "Electric cooker", price: "20$", imageName: "electric-cooker.jpg"),
                Product(title: "Electric cooker", price: "20$", imageName: "electric-cooker.jpg"),
                Product(title: "Electric cooker", price: "20$", imageName: "electric-cooker.jpg"),
                Product(title: "Electric cooker", price: "20$", imageName: "electric-cooker.jpg"),
                Product(title: "Electric cooker", price: "20$", imageName: "electric-cooker.jpg"),
                Product(title: "Electric cooker", price: "20$", imageName: "electric-cooker.jpg"),
                Product(title: "Electric cooker", price: "20$", imageName: "electric-cooker.jpg"),
                Product(title: "Electric cooker", price: "20$", imageName: "electric-cooker.jpg"),
                Product(title: "Electric cooker", price: "20$", imageName: "electric-cooker.jpg"),
            ]
        case "Food":
            return [
                Product(title: "Electric cooker", price: "20$", imageName: "electric-cooker.jpg"),
                Product(title: "Electric cooker", price: "20$", imageName: "electric-cooker.jpg"),
                Product(title: "Electric cooker", price: "20$", imageName: "electric-cooker.jpg"),
                Product(title: "Electric cooker", price: "20$", imageName: "electric-cooker.jpg"),
                Product(title: "Electric cooker", price: "20$", imageName: "electric-cooker.jpg"),
                Product(title: "Electric cooker", price: "20$", imageName: "electric-cooker.jpg"),
                Product(title: "Electric cooker", price: "20$", imageName: "electric-cooker.jpg"),
                Product(title: "Electric cooker", price: "20$", imageName: "electric-cooker.jpg"),
                Product(title: "Electric cooker", price: "20$", imageName: "electric-cooker.jpg"),
                Product(title: "Electric cooker", price: "20$", imageName: "electric-cooker.jpg"),
                Product(title: "Electric cooker", price: "20$", imageName: "electric-cooker.jpg"),
            ]
        case "Toy":
            return [
                Product(title: "Electric cooker", price: "20$", imageName: "electric-cooker.jpg"),
                Product(title: "Electric cooker", price: "20$", imageName: "electric-cooker.jpg"),
                Product(title: "Electric cooker", price: "20$", imageName: "electric-cooker.jpg"),
                Product(title: "Electric cooker", price: "20$", imageName: "electric-cooker.jpg"),
                Product(title: "Electric cooker", price: "20$", imageName: "electric-cooker.jpg"),
                Product(title: "Electric cooker", price: "20$", imageName: "electric-cooker.jpg"),
                Product(title: "Electric cooker", price: "20$", imageName: "electric-cooker.jpg"),
                Product(title: "Electric cooker", price: "20$", imageName: "electric-cooker.jpg"),
                Product(title: "Electric cooker", price: "20$", imageName: "electric-cooker.jpg"),
                Product(title: "Electric cooker", price: "20$", imageName: "electric-cooker.jpg"),
                Product(title: "Electric cooker", price: "20$", imageName: "electric-cooker.jpg"),
            ]
        default:
            return [
                Product(title: "Electric cooker", price: "20$", imageName: "electric-cooker.jpg"),
            ]
        }
    }
}
