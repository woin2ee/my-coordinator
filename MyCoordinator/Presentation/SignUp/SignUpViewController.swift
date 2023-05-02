//
//  SignUpViewController.swift
//  MyCoordinator
//
//  Created by Jaewon Yun on 2023/05/02.
//

import UIKit

final class SignUpViewController: UIViewController {
    
    private let viewModel: SignUpViewModel
    
    private lazy var signUpCompleteButton: UIButton = {
        var config: UIButton.Configuration = .filled()
        config.buttonSize = .large
        config.title = "SignUp"
        let action: UIAction = .init { [weak self] _ in
            self?.viewModel.didCompleteSignUp()
        }
        let button: UIButton = .init(configuration: config, primaryAction: action)
        return button
    }()
    
    init(viewModel: SignUpViewModel) {
        self.viewModel = viewModel
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = .systemBackground
        self.navigationItem.title = "SignUp"
        
        self.view.addSubview(signUpCompleteButton)
        signUpCompleteButton.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            signUpCompleteButton.centerXAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.centerXAnchor),
            signUpCompleteButton.centerYAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.centerYAnchor),
        ])
    }
}
