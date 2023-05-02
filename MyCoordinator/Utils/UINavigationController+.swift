//
//  UINavigationController+.swift
//  MyCoordinator
//
//  Created by Jaewon Yun on 2023/05/02.
//

import UIKit

extension UINavigationController {
    
    /// Replaces the view controllers currently managed by the navigation controller with the specified item.
    /// - Parameters:
    ///   - viewController: <#viewController description#>
    ///   - animated: <#animated description#>
    func setViewController(_ viewController: UIViewController, animated: Bool) {
        self.setViewControllers([viewController], animated: animated)
    }
}
