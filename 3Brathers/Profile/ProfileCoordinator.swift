//
//  ProfileCoordinator.swift
//  3Brathers
//
//  Created by Вячеслав Квашнин on 10.09.2022.
//

import UIKit

class ProfileCoordinator: Coordinator {
    
    weak var parentCoordinator: AppCoordinator?
    
    var childCoordinator = [Coordinator]()
    
    var navigationController: UINavigationController
    
    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    
    func start() {
        let vc = ProfileViewController.instantiate()
        vc.tabBarItem = UITabBarItem(title: "Profile", image: UIImage(systemName: "person"), tag: 1)
        vc.coordinator = self
        navigationController.pushViewController(vc, animated: true)
    }
}
