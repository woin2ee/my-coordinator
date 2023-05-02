//
//  SignUpViewModel.swift
//  MyCoordinator
//
//  Created by Jaewon Yun on 2023/05/02.
//

import Foundation

struct SignUpViewModel: ViewModel {
    
    let coordinator: SignUpCoordinator
    
    func didCompleteSignUp() {
        coordinator.pop(animated: true)
    }
}
