//
//  Coordinator.swift
//  MyCoordinator
//
//  Created by Jaewon Yun on 2023/05/03.
//

import UIKit

class Coordinator {
    
    /// Coordinator 가 사용할 수 있는 `UINavigationController` 객체입니다.
    ///
    /// `Coordinator` 가 push 되었을 경우 push 된 stack 에 대한 `NavigationController`, present 되었을 경우 `presentingViewController` 를 나타냅니다.
    weak var navigationController: UINavigationController?
    
    init(navigationController: UINavigationController?) {
        self.navigationController = navigationController
    }
}
