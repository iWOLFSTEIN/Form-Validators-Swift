//
//  SignupViewController.swift
//  form_validators
//
//  Created by BrainX Technologies on 30/08/2023.
//

import UIKit

class SignupViewController: UIViewController {
    
   
    @IBOutlet weak var confirmPasswordTextField: ValidatableTextField!
    @IBOutlet weak var passwordTextField: ValidatableTextField!
    @IBOutlet weak var usernameTextField: ValidatableTextField!
    @IBOutlet weak var emailTextField: ValidatableTextField!
    @IBOutlet weak var nameTextField: ValidatableTextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        nameTextField.validator = NameValidator()
        nameTextField.enableErrorMessages = false
        usernameTextField.validator = UsernameValidator()
        emailTextField.validator = EmailValidator()
        passwordTextField.validator = PasswordValidator()
        confirmPasswordTextField.validator = ConfirmPasswordValidator()
    }
    
    @IBAction func onConfirmPasswordChanged(_ sender: Any) {
        confirmPasswordTextField.validate(andMatch: passwordTextField.text)
    }
    @IBAction func onPasswordChanged(_ sender: Any) {
        passwordTextField.validate()
    }
    @IBAction func onUsernameChanged(_ sender: Any) {
        usernameTextField.validate()
    }
    @IBAction func onEmailChanged(_ sender: Any) {
        emailTextField.validate()
    }
    @IBAction func onNameChanged(_ sender: Any) {
        nameTextField.validate()
    }
    
}
