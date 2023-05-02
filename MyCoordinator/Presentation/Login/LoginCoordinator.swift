//
//  LoginCoordinator.swift
//  MyCoordinator
//
//  Created by Jaewon Yun on 2023/05/02.
//

import UIKit

final class LoginCoordinator: Coordinator {
    
    weak var presentedNavigationController: UINavigationController?
    
    func present(animated: Bool) {
        let viewModel: LoginViewModel = .init(coordinator: self)
        let viewController: LoginViewController = .init(viewModel: viewModel)
        let presentedNavigationController: UINavigationController = .init(rootViewController: viewController)
        navigationController?.present(presentedNavigationController, animated: animated)
        self.presentedNavigationController = presentedNavigationController
    }
    
    func dismiss(animated: Bool) {
        navigationController?.dismiss(animated: animated, completion: nil)
    }
    
    func push(animated: Bool) {
        let viewModel: LoginViewModel = .init(coordinator: self)
        let viewController: LoginViewController = .init(viewModel: viewModel)
        navigationController?.pushViewController(viewController, animated: animated)
    }
    
    func pop(animated: Bool) {
        navigationController?.popViewController(animated: animated)
    }
    
    func dismissAndPushDetail(animated: Bool) {
        dismiss(animated: animated)
        let detailCoordinator: DetailCoordinator = .init(navigationController: navigationController)
        detailCoordinator.push(animated: animated)
    }
    
    func pushSignUp(animated: Bool) {
        let signUpCoordinator: SignUpCoordinator = .init(navigationController: presentedNavigationController)
        signUpCoordinator.push(animated: true)
    }
}
