//
//  ProfileCoordinator.swift
//  MyCoordinator
//
//  Created by Jaewon Yun on 2023/05/02.
//

import UIKit

final class ProfileCoordinator {
    
    let navigationController: UINavigationController
    
    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    
    func set(animated: Bool) {
        let profileViewModel: ProfileViewModel = .init()
        let profileViewController: ProfileViewController = .init(viewModel: profileViewModel)
        navigationController.setViewController(profileViewController, animated: animated)
    }
}
