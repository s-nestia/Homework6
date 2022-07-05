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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        welcomeLabel.text = "Hello, \(User.anastasia.userName)"
        
        setGradientBackground()
    }

}

extension UIViewController {
    func setGradientBackground() {
        let gradientLayer = CAGradientLayer()
        gradientLayer.frame = self.view.bounds
        gradientLayer.colors = [UIColor.systemIndigo.cgColor, UIColor.systemRed.cgColor]
        gradientLayer.startPoint = CGPoint(x: 0.0, y: 0.0)
        gradientLayer.endPoint = CGPoint(x: 0.0, y: 1.0)
        self.view.layer.insertSublayer(gradientLayer, at: 0)
    }
}
