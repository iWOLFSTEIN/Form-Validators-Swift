//
//  EmailValidationRule.swift
//  form_validators
//
//  Created by BrainX Technologies on 31/08/2023.
//

import Foundation

class EmailValidationRule: ValidationRule {
    func isValid(_ input: String?) -> String? {
        guard let email = input, !email.isEmpty else {
            return ErrorMessage.fieldCantBeEmpty
        }
        
        let emailRegex = Constants.emailRegex
        let emailPredicate = NSPredicate(format: "SELF MATCHES %@", emailRegex)
        if !emailPredicate.evaluate(with: email) {
            return ErrorMessage.invalidEmailFormat
        }
        
        return nil
    }
}
