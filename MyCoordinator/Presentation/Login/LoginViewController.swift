//
//  LoginViewController.swift
//  MyCoordinator
//
//  Created by Jaewon Yun on 2023/05/02.
//

import UIKit

final class LoginViewController: UIViewController {
    
    private let viewModel: LoginViewModel
    
    private lazy var loginCompleteButton: UIButton = {
        var config: UIButton.Configuration = .filled()
        config.buttonSize = .large
        config.title = "Login"
        let action: UIAction = .init { [weak self] _ in
            self?.viewModel.didCompleteLogin()
        }
        let button: UIButton = .init(configuration: config, primaryAction: action)
        return button
    }()
    
    private lazy var signUpButton: UIButton = {
        var config: UIButton.Configuration = .filled()
        config.buttonSize = .large
        config.title = "SignUp"
        let action: UIAction = .init { [weak self] _ in
            self?.viewModel.didTapSignUpButton()
        }
        let button: UIButton = .init(configuration: config, primaryAction: action)
        return button
    }()
    
    init(viewModel: LoginViewModel) {
        self.viewModel = viewModel
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = .systemBackground
        self.navigationItem.title = "Login"
        
        self.view.addSubview(loginCompleteButton)
        self.view.addSubview(signUpButton)
        loginCompleteButton.translatesAutoresizingMaskIntoConstraints = false
        signUpButton.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            loginCompleteButton.centerXAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.centerXAnchor),
            loginCompleteButton.centerYAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.centerYAnchor, constant: -100),
            signUpButton.centerXAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.centerXAnchor),
            signUpButton.centerYAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.centerYAnchor, constant: 100),
        ])
    }
}
