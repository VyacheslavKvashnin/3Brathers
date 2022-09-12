//
//  AuthenticationViewController.swift
//  3Brathers
//
//  Created by Вячеслав Квашнин on 11.09.2022.
//

import UIKit

class LoginViewController: UIViewController, Storybordable {
    
    weak var coordinator: LoginCoordinator?

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .cyan
        title = "Login"
    }
    
    @IBAction func pressedLoginButton(_ sender: Any) {
        coordinator?.showPassword()
    }
}
