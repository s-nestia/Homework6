//
//  ViewController.swift
//  LoginApp
//
//  Created by Anastasia Liapich on 7/2/22.
//  Copyright © 2022 Anastasia Liapich. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {

    @IBOutlet var userName: UITextField!
    @IBOutlet var password: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let welcomeVC = segue.destination as? WelcomeViewController else { return }
        welcomeVC.userName = userName.text ?? ""
    }
    
    @IBAction func unwind(for segue: UIStoryboardSegue) {
        userName.text = ""
        password.text = ""
    }
    
    override func shouldPerformSegue(withIdentifier identifier: String, sender: Any?) -> Bool {
        if userName.text == "User" && password.text == "Password" {
            return true
        } else {
            password.text = ""
            showAlert(with: "Invalid login or password", and: "Please enter correct login and password")
            return false
        }
    }
    
    @IBAction func forgotUserNameAction(_ sender: UIButton) {
        showAlert(with: "Ooops!", and: "Your name is User 🙂")
    }
    
    @IBAction func forgotPasswordAction(_ sender: UIButton)  {
        showAlert(with: "Ooops!", and: "Your password is Password")
    }
}
// MARK: - UIAlertController
extension LoginViewController {
    private func showAlert(with title: String, and message: String) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let okAction = UIAlertAction(title: "OK", style: .default)
        alert.addAction(okAction)
        present(alert, animated: true)
    }
}

