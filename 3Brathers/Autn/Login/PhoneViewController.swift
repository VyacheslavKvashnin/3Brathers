//
//  AuthenticationViewController.swift
//  3Brathers
//
//  Created by Вячеслав Квашнин on 11.09.2022.
//

import UIKit

class PhoneViewController: UIViewController, Storybordable, UITextFieldDelegate {
    
    @IBOutlet weak var phoneNumber: UITextField!
    weak var coordinator: PhoneCoordinator?

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .cyan
        title = "Login"
    }
    
    @IBAction func pressedLoginButton(_ sender: Any) {
        if let text = phoneNumber.text, !text.isEmpty {
            let number = "+1\(text)"
            AuthManager.shared.startAuth(phoneNumber: number) { success in
                guard success else { return }
                DispatchQueue.main.async {
                    self.coordinator?.showPassword()
                }
            }
        }
//        coordinator?.showPassword()
    }
    
//    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
//        textField.resignFirstResponder()
//
//        if let text = phoneNumber.text, !text.isEmpty {
//            let number = "+1\(text)"
//            AuthManager.shared.startAuth(phoneNumber: number) { success in
//                guard success else { return }
//                DispatchQueue.main.async {
//                    self.coordinator?.showPassword()
//                }
//            }
//        }
//        return true
//    }
}
