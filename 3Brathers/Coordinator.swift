//
//  Coordinator.swift
//  3Brathers
//
//  Created by Вячеслав Квашнин on 10.09.2022.
//

import UIKit

protocol Coordinator {
    var childCoordinator: [Coordinator] { get set }
    var navigationController: UINavigationController { get set }
    
    func start()
}
