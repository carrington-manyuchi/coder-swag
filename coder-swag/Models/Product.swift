//
//  Product.swift
//  coder-swag
//
//  Created by Carrington Tafadzwa Manyuchi on 2023/03/22.
//

import UIKit


struct Product {
    
    private (set) public var title: String
    private (set) public var price: String
    private (set) public var imageName: String
  
    init(title: String, price: String, imageName: String) {
        self.title = title
        self.price = price
        self.imageName = imageName
    }
}
