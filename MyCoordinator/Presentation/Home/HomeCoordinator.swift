//
//  HomeCoordinator.swift
//  MyCoordinator
//
//  Created by Jaewon Yun on 2023/05/02.
//

import UIKit

/// `HomeViewController` 의 시작을 결정하는 `Coordinator`
final class HomeCoordinator: Coordinator {
    
    /// navigation stack 을 `HomeViewController` 로 초기화합니다.
    func set(animated: Bool) {
        let viewModel: HomeViewModel = .init(coordinator: self)
        let viewController: HomeViewController = .init(viewModel: viewModel)
        navigationController?.setViewController(viewController, animated: animated)
    }
    
    /// `DetailViewController` 를 navigation stack 에 push 합니다.
    func pushDetail() {
        let detailCoordinator: DetailCoordinator = .init(navigationController: navigationController)
        detailCoordinator.push(animated: true)
    }
    
    func presentLogin() {
        let loginCoordinator: LoginCoordinator = .init(navigationController: navigationController)
        loginCoordinator.present(animated: true)
    }
}
