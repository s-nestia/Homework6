//
//  WelcomeViewController.swift
//  LoginApp
//
//  Created by Anastasia Liapich on 7/3/22.
//  Copyright © 2022 Anastasia Liapich. All rights reserved.
//

import UIKit

class WelcomeViewController: UIViewController {

    @IBOutlet var welcomeLabel: UILabel!
    var userName: String = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        welcomeLabel.text = "Hello, \(userName)"
    }

}
