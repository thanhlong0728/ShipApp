//
//  ViewController.swift
//  WeShop
//
//  Created by Mac on 20/09/2024.
//

import UIKit

class CategoriesVC: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    @IBOutlet weak var categoryTable: UITableView!
    var categories: [Category]!

    override func viewDidLoad() {
        super.viewDidLoad()
        categories = DataService.instance.getCategories()
        categoryTable.dataSource = self
        categoryTable.delegate = self
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return categories.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let cell = tableView.dequeueReusableCell(withIdentifier: "CategoryCell") as? CategoryCell {
            let category = categories[indexPath.row]
            cell.updateViews(category: category)
            return cell
        }else{
            return CategoryCell()
        }
    }
    
    // được gọi khi click category
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let category = categories[indexPath.row]
        // chuyển màn hình
        performSegue(withIdentifier: "ProductsVC", sender: category)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let productsVC = segue.destination as? ProductsVC{
            assert(sender as? Category != nil )
            let backBtn = UIBarButtonItem()
            backBtn.title = ""
            navigationItem.backBarButtonItem = backBtn
            productsVC.initProducts(category: sender as! Category)
        }
    }

}

