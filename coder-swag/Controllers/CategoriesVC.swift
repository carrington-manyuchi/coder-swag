//
//  ViewController.swift
//  coder-swag
//
//  Created by Carrington Tafadzwa Manyuchi on 2023/03/22.
//

import UIKit

class CategoriesVC: UIViewController {
    
    @IBOutlet weak var categoryTable: UITableView!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        categoryTable.dataSource = self
        categoryTable.delegate = self
    }


}

extension CategoriesVC: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return DataService.instance.getCategories().count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let cell = tableView.dequeueReusableCell(withIdentifier: "CategoryCell") as? CategoryCell {
            let category =  DataService.instance.getCategories()[indexPath.row]
            cell.updateViews(category: category)  
            return cell
        } else {
            return CategoryCell()
        }
    }
    
}
