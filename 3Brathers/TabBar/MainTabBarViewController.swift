//
//  MainTabBarViewController.swift
//  3Brathers
//
//  Created by Вячеслав Квашнин on 11.09.2022.
//

import UIKit

class MainTabBarViewController: UITabBarController, Storybordable {
    
//    let main = AppCoordinator(navigationController: UINavigationController())
    let product = ProductCoordinator(navigationController: UINavigationController())
    let buy = ProfileCoordinator(navigationController: UINavigationController())
    let create = CartCoordinator(navigationController: UINavigationController())

    override func viewDidLoad() {
        super.viewDidLoad()
        
//        main.start()
        product.start()
        buy.start()
        create.start()
        
        viewControllers = [product.navigationController, buy.navigationController, create.navigationController]
      
    }
}