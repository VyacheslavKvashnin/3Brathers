//
//  ProductViewController.swift
//  3Brathers
//
//  Created by Вячеслав Квашнин on 10.09.2022.
//

import UIKit

class ProductViewController: UIViewController, Storybordable {

    weak var coordinator: AppCoordinator?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        title = "Product"
    }
    
    @IBAction func buyButton(_ sender: Any) {
        coordinator?.showProfile()
    }
    
    @IBAction func createButton(_ sender: Any) {
        coordinator?.showCart()
    }
}

