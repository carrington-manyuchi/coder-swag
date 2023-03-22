//
//  ProductsVC.swift
//  coder-swag
//
//  Created by Carrington Tafadzwa Manyuchi on 2023/03/22.
//

import UIKit

class ProductsVC: UIViewController {
    
    @IBOutlet weak var productsCollection: UICollectionView!
    
    private (set) public var products = [Product]()

    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    func initProducts(category: Category) {
        products = DataService.instance.getProducts(forCategoryTitle: category.title)
    }

}


extension ProductsVC: UICollectionViewDelegate, UICollectionViewDataSource {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return products.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        if let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "ProductCell", for: indexPath) as? ProductCell {
            let product = products[indexPath.row]
            cell.updateViews(product: product)
            return cell
        } else {
            return ProductCell()
        }
    }
    
    
}
