//
//  CartViewController.swift
//  3Brathers
//
//  Created by Вячеслав Квашнин on 10.09.2022.
//

import UIKit

class CartViewController: UIViewController, Storybordable {
    
    weak var coordinator: CartCoordinator?

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
    }
}
