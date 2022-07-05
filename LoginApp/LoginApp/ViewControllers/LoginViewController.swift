//
//  ViewController.swift
//  LoginApp
//
//  Created by Anastasia Liapich on 7/2/22.
//  Copyright © 2022 Anastasia Liapich. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {

    @IBOutlet var userNameTextField: UITextField!
    @IBOutlet var passwordTextField: UITextField!
    
    private let user = "User"
    private let password = "Password"
    
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesBegan(touches, with: event)
        view.endEditing(true)
    }
    
    @IBAction func logInPressed() {
        if userNameTextField.text == user && passwordTextField.text == password {
           performSegue(withIdentifier: "showWelcomeVC", sender: nil)
        } else {
            passwordTextField.text = ""
            showAlert(with: "Invalid login or password", and: "Please, enter correct login and password")
        }
    }
    
    @IBAction func unwind(for segue: UIStoryboardSegue) {
        userNameTextField.text = ""
        passwordTextField.text = ""
    }
    
    @IBAction func forgotUserNameAction(_ sender: UIButton) {
        showAlert(with: "Ooops!", and: "Your name is \(user) 🙂")
    }
    
    @IBAction func forgotPasswordAction(_ sender: UIButton)  {
        showAlert(with: "Ooops!", and: "Your password is \(password)")
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

