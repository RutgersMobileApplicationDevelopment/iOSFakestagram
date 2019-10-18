//
//  DetailViewController.swift
//  LoginScreen
//
//  Created by Salman Fakhri on 10/14/19.
//  Copyright © 2019 Salman Fakhri. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {
    
    var data: [Int]
    
    init(data: [Int]) {
        self.data = data
        
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

}
