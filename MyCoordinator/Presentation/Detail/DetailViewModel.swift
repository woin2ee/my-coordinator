//
//  DetailViewModel.swift
//  MyCoordinator
//
//  Created by Jaewon Yun on 2023/05/02.
//

import Foundation

struct DetailViewModel: ViewModel {
    
    let coordinator: DetailCoordinator
    
    func didTapCompleteButton() {
        coordinator.pop(animated: true)
    }
}
