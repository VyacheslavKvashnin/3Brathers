//
//  ViewController.swift
//  3Brathers
//
//  Created by Вячеслав Квашнин on 10.09.2022.
//

import UIKit

class ViewController: UIViewController, Storybordble {

    weak var coordinator: AppCoordinator?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .cyan
        
    }
    
    @IBAction func buyButton(_ sender: Any) {
        coordinator?.buySubscription()
    }
    
    @IBAction func createButton(_ sender: Any) {
        coordinator?.createAccount()
    }
}

