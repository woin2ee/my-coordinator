//
//  HomeViewModel.swift
//  MyCoordinator
//
//  Created by Jaewon Yun on 2023/05/02.
//

import Foundation

struct HomeViewModel: ViewModel {
    
    let coordinator: HomeCoordinator
    
    func didTapShowDetailButton() {
        coordinator.presentLogin()
    }
}
