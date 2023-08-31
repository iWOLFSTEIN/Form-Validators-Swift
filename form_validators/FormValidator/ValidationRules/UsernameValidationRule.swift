//
//  UsernameValidationRule.swift
//  form_validators
//
//  Created by BrainX Technologies on 31/08/2023.
//

import Foundation

class UsernameValidationRule: ValidationRule {
    
    let minLength: Int
    let maxLength: Int
    
    init(minLength: Int = Constants.minUsernameLength, maxLength: Int = Constants.maxUsernameLength) {
        self.minLength = minLength
        self.maxLength = maxLength
    }
    
    func isValid(_ input: String?) -> String? {
        guard let username = input, !username.isEmpty else {
            return ErrorMessage.fieldCantBeEmpty
        }
        
        let usernameRegex = Constants.usernameRegex
        let usernamePredicate = NSPredicate(format: "SELF MATCHES %@", usernameRegex)
        if username.count < minLength || username.count > maxLength {
            return ErrorMessage.invalidUsernameLength
        } else if !usernamePredicate.evaluate(with: username) {
            return ErrorMessage.invalidUsernameCharacter
        }
        
        return nil
    }
}
