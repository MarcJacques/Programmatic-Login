//
//  ViewController.swift
//  Programmatic Login
//
//  Created by Marc Jacques on 12/20/21.
//

import UIKit

class ViewController: UIViewController {
    
    private let loginContentView: UIView = {
        let view = UIView()
        view.backgroundColor = .gray
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    private let usernameTextField: UITextField = {
        let textField = UITextField()
        textField.backgroundColor = .white
        textField.placeholder = "Username"
        textField.borderStyle = .roundedRect
        textField.translatesAutoresizingMaskIntoConstraints = false
        return textField
    }()
    
    private let passwordTextField: UITextField = {
        let textField = UITextField()
        textField.isSecureTextEntry = true
        textField.backgroundColor = .white
        textField.placeholder = "Password"
        textField.borderStyle = .roundedRect
        textField.translatesAutoresizingMaskIntoConstraints = false
        return textField
    }()
    
    let loginButton: UIButton = {
        let button = UIButton(type: .system)
        button.backgroundColor = .blue
        button.setTitle("Login", for: .normal)
        button.tintColor = .white
        button.layer.cornerRadius = 5
        button.clipsToBounds = true
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemRed
        
        loginContentView.addSubview(usernameTextField)
        loginContentView.addSubview(passwordTextField)
        loginContentView.addSubview(loginButton)
        
        view.addSubview(loginContentView)
        setUpAutoLayout()
    }
    
    func setUpAutoLayout() {
        loginContentView.leftAnchor.constraint(equalTo: view.leftAnchor).isActive = true
        loginContentView.rightAnchor.constraint(equalTo: view.rightAnchor).isActive = true
        loginContentView.heightAnchor.constraint(equalToConstant: view.frame.height/3).isActive = true
        loginContentView.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        
        usernameTextField.topAnchor.constraint(equalTo: loginContentView.topAnchor, constant: 40).isActive = true
        usernameTextField.leftAnchor.constraint(equalTo: loginContentView.leftAnchor, constant: 20).isActive = true
        usernameTextField.rightAnchor.constraint(equalTo: loginContentView.rightAnchor, constant: -20).isActive = true
        usernameTextField.heightAnchor.constraint(equalToConstant: 50).isActive = true
        
        passwordTextField.topAnchor.constraint(equalTo: usernameTextField.bottomAnchor, constant: 20).isActive = true
        passwordTextField.leftAnchor.constraint(equalTo: loginContentView.leftAnchor, constant: 20).isActive = true
        passwordTextField.rightAnchor.constraint(equalTo: loginContentView.rightAnchor, constant: -20).isActive = true
        passwordTextField.heightAnchor.constraint(equalToConstant: 50).isActive = true
        
        loginButton.topAnchor.constraint(equalTo: passwordTextField.bottomAnchor, constant: 20).isActive = true
        loginButton.leftAnchor.constraint(equalTo: loginContentView.leftAnchor, constant: 180).isActive = true
        loginButton.rightAnchor.constraint(equalTo: loginContentView.rightAnchor, constant: -180).isActive = true
        loginButton.heightAnchor.constraint(equalToConstant: 25).isActive = true
    }


}

