//
//  LoginViewModel.swift
//  MyCoordinator
//
//  Created by Jaewon Yun on 2023/05/02.
//

import Foundation

struct LoginViewModel: ViewModel {
    
    let coordinator: LoginCoordinator
    
    func didCompleteLogin() {
        coordinator.dismissAndPushDetail(animated: true)
    }
    
    func didTapSignUpButton() {
        coordinator.pushSignUp(animated: true)
    }
}
