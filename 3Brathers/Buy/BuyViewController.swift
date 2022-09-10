//
//  BuyViewController.swift
//  3Brathers
//
//  Created by Вячеслав Квашнин on 10.09.2022.
//

import UIKit

class BuyViewController: UIViewController, Storybordble {
    
    weak var coordinator: BuyCoordinator?

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white

    }
    
    deinit {
        print("deinit")
    }
}
