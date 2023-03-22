//
//  ProductCell.swift
//  coder-swag
//
//  Created by Carrington Tafadzwa Manyuchi on 2023/03/22.
//

import UIKit

class ProductCell: UICollectionViewCell {
    
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var productTitle: UILabel!
    @IBOutlet weak var productPrice: UILabel!
    
    func updateViews(product: Product) {
        imageView.image = UIImage(named: product.imageName)
        productTitle.text = product.title
        productPrice.text = product.price
    }
    
    
}
