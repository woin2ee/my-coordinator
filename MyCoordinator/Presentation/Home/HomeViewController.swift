//
//  HomeViewController.swift
//  MyCoordinator
//
//  Created by Jaewon Yun on 2023/05/02.
//

import UIKit

final class HomeViewController: UIViewController {
    
    private let viewModel: HomeViewModel
    
    private lazy var showDetailButton: UIButton = {
        var config: UIButton.Configuration = .filled()
        config.buttonSize = .large
        config.title = "Detail"
        let action: UIAction = .init { [weak self] _ in
            self?.viewModel.didTapShowDetailButton()
        }
        let button: UIButton = .init(configuration: config, primaryAction: action)
        return button
    }()
    
    init(viewModel: HomeViewModel) {
        self.viewModel = viewModel
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = .systemBackground
        self.navigationItem.title = "Home"
        
        self.view.addSubview(showDetailButton)
        showDetailButton.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            showDetailButton.centerXAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.centerXAnchor),
            showDetailButton.centerYAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.centerYAnchor),
        ])
    }
}
