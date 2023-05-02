//
//  DetailCoordinator.swift
//  MyCoordinator
//
//  Created by Jaewon Yun on 2023/05/02.
//

import UIKit

final class DetailCoordinator: Coordinator {
    
    /// `DetailViewController` 를 Navigation Stack 에 Push 하여 화면에 표시합니다.
    /// - Parameter animated: Specify true to animate the transition or false if you do not want the transition to be animated. You might specify false if you are setting up the navigation controller at launch time.
    func push(animated: Bool) {
        let viewModel: DetailViewModel = .init(coordinator: self)
        let viewController: DetailViewController = .init(viewModel: viewModel)
        navigationController?.pushViewController(viewController, animated: animated)
    }
    
    func pop(animated: Bool) {
        navigationController?.popViewController(animated: animated)
    }
}
