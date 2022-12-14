//
//  AppCoordinator.swift
//  3Brathers
//
//  Created by Вячеслав Квашнин on 10.09.2022.
//

import UIKit
import FirebaseAuth

class AppCoordinator: Coordinator {
    
    var childCoordinator = [Coordinator]()
    var navigationController: UINavigationController
    
    var isLoggedIn = false

    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    
    func start() {
        if Auth.auth().currentUser == nil {
            showLogin()
        } else {
            showMainTabBar()
        }
    }
    
    func showMainTabBar() {
        let vc = MainTabBarViewController.instantiate()
        navigationController.viewControllers.removeAll()
        navigationController.setViewControllers([vc], animated: false)
    }
    
    func showProduct() {
        let vc = ProductViewController.instantiate()
        vc.tabBarItem = UITabBarItem(title: "Product", image: UIImage(systemName: "list.bullet.rectangle.fill"), tag: 0)
        vc.coordinator = self
        navigationController.pushViewController(vc, animated: true)
    }
    
    func showLogin() {
        let child = PhoneCoordinator(navigationController: navigationController)
        childCoordinator.append(child)
        child.start()
    }
    
    func showProfile() {
        let child = ProfileCoordinator(navigationController: navigationController)
        childCoordinator.append(child)
        child.parentCoordinator = self
        child.start()
    }
    
    func showCart() {
        let child = CartCoordinator(navigationController: navigationController)
        childCoordinator.append(child)
        child.start()
    }
}
