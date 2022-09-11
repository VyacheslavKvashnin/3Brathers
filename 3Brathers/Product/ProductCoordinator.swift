//
//  ProductCoordinator.swift
//  3Brathers
//
//  Created by Вячеслав Квашнин on 11.09.2022.
//

import UIKit

class ProductCoordinator: Coordinator {
    var childCoordinator = [Coordinator]()
    
    var navigationController: UINavigationController
    
    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    
    func start() {
        let vc = ProductViewController.instantiate()
        vc.tabBarItem = UITabBarItem(title: "Product", image: UIImage(systemName: "list.bullet.rectangle.fill"), tag: 0)
//        vc.coordinator = self
        navigationController.pushViewController(vc, animated: true)
    }
}
