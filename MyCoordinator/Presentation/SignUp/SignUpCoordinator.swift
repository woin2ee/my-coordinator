//
//  SignUpCoordinator.swift
//  MyCoordinator
//
//  Created by Jaewon Yun on 2023/05/02.
//

import UIKit

final class SignUpCoordinator: Coordinator {
    
    func push(animated: Bool) {
        let viewModel: SignUpViewModel = .init(coordinator: self)
        let viewController: SignUpViewController = .init(viewModel: viewModel)
        navigationController?.pushViewController(viewController, animated: animated)
    }
    
    func pop(animated: Bool) {
        navigationController?.popViewController(animated: animated)
    }
}
