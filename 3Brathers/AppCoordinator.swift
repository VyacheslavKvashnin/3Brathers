//
//  AppCoordinator.swift
//  3Brathers
//
//  Created by Вячеслав Квашнин on 10.09.2022.
//

import UIKit

class AppCoordinator: Coordinator {
    
    var childCoordinator = [Coordinator]()
    var navigationController: UINavigationController
    
    var isLoggedIn = false

    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    
    func start() {
        if !isLoggedIn {
            showViewController()
        } else {
            showPassword()
        }
    }
    
    func showPassword() {
        let child = PasswordCoordinator(navigationController: navigationController)
        childCoordinator.append(child)
        child.start()
    }
    
    func showViewController() {
        let vc = ProductViewController.instantiate()
        vc.tabBarItem = UITabBarItem(title: "Product", image: UIImage(systemName: "list.bullet.rectangle.fill"), tag: 0)
        vc.coordinator = self
        navigationController.pushViewController(vc, animated: true)
    }
    
    func showLogin() {
        let child = LoginCoordinator(navigationController: navigationController)
        childCoordinator.append(child)
        child.start()
    }
    
    func buySubscription() {
        let child = ProfileCoordinator(navigationController: navigationController)
        childCoordinator.append(child)
        child.parentCoordinator = self
        child.start()
    }
    
    func createAccount() {
        let child = CartCoordinator(navigationController: navigationController)
        childCoordinator.append(child)
        child.start()
    }
}
