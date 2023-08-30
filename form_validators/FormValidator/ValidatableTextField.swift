//
//  ValidatableTextField.swift
//  form_validators
//
//  Created by BrainX Technologies on 30/08/2023.
//

import UIKit

class ValidatableTextField: UITextField {
    var validator: FieldValidator?
    var enableErrorMessages: Bool = true
    var errorLabel: UILabel = UILabel()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        uiConfigurations()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        uiConfigurations()
    }
    
    func uiConfigurations() {
        showErrorLabel()
    }
    
    func showErrorLabel() {
        errorLabel.textColor = .red
        errorLabel.font = UIFont.systemFont(ofSize: Constants.errorLabelFontSize)
        addSubview(errorLabel)
        errorLabel.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            errorLabel.leadingAnchor.constraint(equalTo: leadingAnchor),
            errorLabel.trailingAnchor.constraint(equalTo: trailingAnchor),
            errorLabel.topAnchor.constraint(equalTo: bottomAnchor, constant: Constants.errorLabelSpacingFromTextField)
        ])
    }
    
    func validate() {
        if !enableErrorMessages { return }
        validateInput()
    }
    
    func validate(andMatch input: String?) {
        if !enableErrorMessages { return }
        validateInput(input)
    }
    
    private func validateInput(_ optional: String? = nil) {
        guard let input = text, let validator = validator else {
            errorLabel.isHidden = true
            return
        }
        
        let validationMessage: String?
        if let optional {
            validationMessage = (validator as! ConfirmPasswordValidator).validate(input, optional)
        }
        else {
            validationMessage = validator.validate(input)
        }
        
        errorLabel.text = validationMessage
        errorLabel.isHidden = validationMessage == nil
    }
}

