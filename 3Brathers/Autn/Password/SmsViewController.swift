//
//  PasswordViewController.swift
//  3Brathers
//
//  Created by Вячеслав Квашнин on 11.09.2022.
//

import UIKit

class SmsViewController: UIViewController, Storybordable {
    
    @IBOutlet weak var smsCode: UITextField!
    var coordinator: SmsCoordinator?

    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Password"
        view.backgroundColor = .cyan
    }
    @IBAction func pressedPasswordButton(_ sender: Any) {
        if let text = smsCode.text, !text.isEmpty {
            let code = text
            AuthManager.shared.verifyCode(smsCode: code) { success in
                guard success else { return }
                DispatchQueue.main.async {
                    self.coordinator?.showTabBar()
                }
            }
        }
//        coordinator?.showTabBar()
    }
}
