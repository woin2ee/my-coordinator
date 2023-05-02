//
//  DetailViewController.swift
//  MyCoordinator
//
//  Created by Jaewon Yun on 2023/05/02.
//

import UIKit

final class DetailViewController: UIViewController {
    
    private let viewModel: DetailViewModel
    
    private lazy var completeButton: UIButton = {
        var config: UIButton.Configuration = .filled()
        config.buttonSize = .large
        config.title = "Complete"
        let action: UIAction = .init { [weak self] _ in
            self?.viewModel.didTapCompleteButton()
        }
        let button: UIButton = .init(configuration: config, primaryAction: action)
        return button
    }()
    
    init(viewModel: DetailViewModel) {
        self.viewModel = viewModel
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = .systemBackground
        self.navigationItem.title = "Detail"
        
        self.view.addSubview(completeButton)
        completeButton.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            completeButton.centerXAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.centerXAnchor),
            completeButton.centerYAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.centerYAnchor),
        ])
    }
}
