//
//  ViewController.swift
//  LoginScreen
//
//  Created by Salman Fakhri on 10/11/19.
//  Copyright © 2019 Salman Fakhri. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Add logo
        addLogo()
        
        // Add text fields for username and password
        addUserNameField()
        addPassWordField()
        
        // Add login button
        
    }
    
    func addLogo() {
        // Create UIImageView
        let logoView = UIImageView()
        
        // Add insta logo to UIImageView
        logoView.image = UIImage(named: "instagram-logo.png")
        
        // Set aspect ratio
        logoView.contentMode = .scaleAspectFit
        
        // Add imageView as subview
        view.addSubview(logoView)
        
        // set translatesAutoresiasjhd to false
        logoView.translatesAutoresizingMaskIntoConstraints = false
        
        // add constrains
        let topConstraint = logoView.topAnchor.constraint(equalTo: view.topAnchor, constant: 70)
        let xConstraint = logoView.centerXAnchor.constraint(equalTo: view.centerXAnchor)
        
        let widthConstraint = logoView.widthAnchor.constraint(equalToConstant: 250)
        
        // activate constraints
        topConstraint.isActive = true
        xConstraint.isActive = true
        widthConstraint.isActive = true
    }
    
    func addUserNameField() {
        // create text field
        let userNameField = UITextField()
        
        // set properties
        userNameField.placeholder = "Username"
        userNameField.delegate = self
        userNameField.textAlignment = .center
        
        view.addSubview(userNameField)
        
        userNameField.translatesAutoresizingMaskIntoConstraints = false
        
        let yConstraint = userNameField.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: -20)
        let leftConstraint = userNameField.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 20)
        let rightConstraint = userNameField.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -20)
        
        yConstraint.isActive = true
        leftConstraint.isActive = true
        rightConstraint.isActive = true
    }
    
    func addPassWordField() {
        // create text field
        let passWordField = UITextField()
        
        // set properties
        passWordField.placeholder = "Password"
        passWordField.delegate = self
        passWordField.textAlignment = .center
        
        view.addSubview(passWordField)
        
        passWordField.translatesAutoresizingMaskIntoConstraints = false
        
        let yConstraint = passWordField.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: 20)
        let leftConstraint = passWordField.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 20)
        let rightConstraint = passWordField.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -20)
        
        yConstraint.isActive = true
        leftConstraint.isActive = true
        rightConstraint.isActive = true
    }
    
    func addLoginButton() {
        let loginButton = UIButton(type: .system)
        
        loginButton.setTitle("Login", for: .normal)
        loginButton.setTitleColor(.blue, for: .normal)
        
        view.addSubview(loginButton)
        
        loginButton.translatesAutoresizingMaskIntoConstraints = false
        
        loginButton.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        
        
    }
    
}

extension ViewController:  UITextFieldDelegate {

    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        // dismiss the keyboard
        textField.resignFirstResponder()
        return true
    }
    
    
}

