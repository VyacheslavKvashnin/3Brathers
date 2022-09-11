//
//  PasswoedCoordinator.swift
//  3Brathers
//
//  Created by Вячеслав Квашнин on 11.09.2022.
//

import UIKit

class PasswordCoordinator: Coordinator {
    var childCoordinator = [Coordinator]()
    
    var navigationController: UINavigationController
    
    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    
    func start() {
        let vc = PasswordViewController.instantiate()
        vc.coordinator = self
        navigationController.pushViewController(vc, animated: true)
    }
}
