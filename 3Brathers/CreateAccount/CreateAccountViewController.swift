//
//  CreateAccountViewController.swift
//  3Brathers
//
//  Created by Вячеслав Квашнин on 10.09.2022.
//

import UIKit

class CreateAccountViewController: UIViewController, Storybordble {
    
    weak var coordinator: CreateAccountCoordinator?

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
    }
}