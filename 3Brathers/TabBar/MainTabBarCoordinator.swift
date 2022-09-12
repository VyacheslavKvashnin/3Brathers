//
//  MainTabBarCoordinator.swift
//  3Brathers
//
//  Created by Вячеслав Квашнин on 12.09.2022.
//

import UIKit

class MainTabBarCoordinator: Coordinator {
    var childCoordinator = [Coordinator]()
    
    var navigationController: UINavigationController
    
    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    
    func start() {
        let vc = MainTabBarViewController.instantiate()
        navigationController.viewControllers.removeAll()
        navigationController.pushViewController(vc, animated: true)
    }
}
