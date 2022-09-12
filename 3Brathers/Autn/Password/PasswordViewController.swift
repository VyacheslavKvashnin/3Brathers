//
//  PasswordViewController.swift
//  3Brathers
//
//  Created by Вячеслав Квашнин on 11.09.2022.
//

import UIKit

class PasswordViewController: UIViewController, Storybordable {
    
    var coordinator: PasswordCoordinator?

    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Password"
        view.backgroundColor = .cyan
    }
    @IBAction func pressedPasswordButton(_ sender: Any) {
        coordinator?.showTabBar()
    }
}
