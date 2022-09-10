//
//  Storybordble.swift
//  3Brathers
//
//  Created by Вячеслав Квашнин on 10.09.2022.
//

import UIKit

protocol Storybordble {
    static func instantiate() -> Self
}

extension Storybordble where Self: UIViewController {
    static func instantiate() -> Self {
        let id = String(describing: self)
        let storyboard = UIStoryboard(name: "Main", bundle: Bundle.main)
        return storyboard.instantiateViewController(withIdentifier: id) as! Self
    }
}
