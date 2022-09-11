//
//  CartCoordinator.swift
//  3Brathers
//
//  Created by Вячеслав Квашнин on 11.09.2022.
//

import UIKit

class CartCoordinator: Coordinator {
    var childCoordinator = [Coordinator]()
    
    var navigationController: UINavigationController
    
    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    
    func start() {
        let vc = CartViewController.instantiate()
        vc.tabBarItem = UITabBarItem(title: "Cart", image: UIImage(systemName: "cart"), tag: 2)
        vc.coordinator = self
        navigationController.pushViewController(vc, animated: true)
    }
}
