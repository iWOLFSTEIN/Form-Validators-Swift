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
    let viewModel: SignupViewModel = SignupViewModel()
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
        viewModel.isFormValidated = confirmPasswordTextField.validate(andMatch: passwordTextField.text)
    }
    @IBAction func onPasswordChanged(_ sender: Any) {
        viewModel.isFormValidated = passwordTextField.validate()
    }
    @IBAction func onUsernameChanged(_ sender: Any) {
        viewModel.isFormValidated = usernameTextField.validate()
    }
    @IBAction func onEmailChanged(_ sender: Any) {
        viewModel.isFormValidated = emailTextField.validate()
    }
    @IBAction func onNameChanged(_ sender: Any) {
        viewModel.isFormValidated = nameTextField.validate()
    }
    
    @IBAction func onSignup(_ sender: UIButton) {
        if viewModel.isFormValidated {
            print("Signup")
        } else {
            print("Please solve the issues first")
        }
    }
}
