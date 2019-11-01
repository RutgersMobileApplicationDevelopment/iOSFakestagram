//
//  UsernameViewController.swift
//  LoginScreen
//
//  Created by Shashank Sharma on 10/18/19.
//  Copyright © 2019 Salman Fakhri. All rights reserved.
//

import Foundation
import UIKit

class UsernameViewController: UIViewController {
    
    var username: String?
    let usernameLabel: UILabel = UILabel()
    let forwardButton: UIButton = UIButton()
    let backButton: UIButton = UIButton()

    init(username: String) {
        self.username = username
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .yellow
        addUsernameLabel()
        addforwardButton()
        addBackButton()
    }
    
    func addUsernameLabel() {
        
        if let username = self.username {
            usernameLabel.text = username
        }
        
        view.addSubview(usernameLabel)
        
        usernameLabel.translatesAutoresizingMaskIntoConstraints = false

        let xConstraint = usernameLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor)
        let yConstraint = usernameLabel.centerYAnchor.constraint(equalTo: view.centerYAnchor)
        
        xConstraint.isActive = true
        yConstraint.isActive = true

    }
    
    func addforwardButton() {
        
        forwardButton.setTitle("Forward", for: .normal)
        forwardButton.setTitleColor(.white, for: .normal)
        forwardButton.backgroundColor = .red
        
        forwardButton.addTarget(self, action: #selector(goForward), for: .touchUpInside)
        
        view.addSubview(forwardButton)
        
        forwardButton.translatesAutoresizingMaskIntoConstraints = false
        
        let xConstraint = forwardButton.centerXAnchor.constraint(equalTo: view.centerXAnchor)
        let yConstraint = forwardButton.centerYAnchor.constraint(equalTo: usernameLabel.centerYAnchor, constant: 70)

        xConstraint.isActive = true
        yConstraint.isActive = true
    }
    
    func addBackButton() {
        
        backButton.setTitle("Back", for: .normal)
        backButton.setTitleColor(.white, for: .normal)
        backButton.backgroundColor = .red
        
        backButton.addTarget(self, action: #selector(goBack), for: .touchUpInside)
        
        view.addSubview(backButton)
        
        backButton.translatesAutoresizingMaskIntoConstraints = false
        
        let xConstraint = backButton.centerXAnchor.constraint(equalTo: forwardButton.centerXAnchor)
        let yConstraint = backButton.centerYAnchor.constraint(equalTo: forwardButton.centerYAnchor, constant: 70)

        xConstraint.isActive = true
        yConstraint.isActive = true
    }

    
    @objc
    func goBack() {
        print("go back pressed")
        self.navigationController?.popViewController(animated: true)
    }
    
    @objc
    func goForward() {
        print("go forward pressed")
    }

}
