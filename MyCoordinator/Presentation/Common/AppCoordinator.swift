//
//  AppCoordinator.swift
//  MyCoordinator
//
//  Created by Jaewon Yun on 2023/05/02.
//

import UIKit

/// 앱의 시작을 결정해주는 Coordinator
struct AppCoordinator {
    
    let rootTabBarController: UITabBarController
    
    /// 앱을 시작하는데 필요한 초기 화면을 세팅합니다.
    /// - Parameter isLoggedIn: <#isLoggedIn description#>
    func startApp(isLoggedIn: Bool) {
        let homeNavigationController: UINavigationController = .init()
        homeNavigationController.tabBarItem = .init(title: "Home", image: nil, selectedImage: nil)
        let homeCoordinator: HomeCoordinator = .init(navigationController: homeNavigationController)
        homeCoordinator.set(animated: false)
        
        let profileNavigationController: UINavigationController = .init()
        profileNavigationController.tabBarItem = .init(title: "Profile", image: nil, selectedImage: nil)
        let profileCoordinator: ProfileCoordinator = .init(navigationController: profileNavigationController)
        profileCoordinator.set(animated: false)
        
        rootTabBarController.setViewControllers([
            homeNavigationController,
            profileNavigationController,
        ], animated: false)
    }
}
