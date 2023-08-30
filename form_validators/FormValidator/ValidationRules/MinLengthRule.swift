//
//  MinLengthRule.swift
//  form_validators
//
//  Created by BrainX Technologies on 30/08/2023.
//

struct MinLengthRule: ValidationRule {
    let minLength: Int
    
    init(minLength: Int = Constants.minPasswordLength) {
        self.minLength = minLength
    }
    
    func isValid(_ input: String?) -> String? {
        let length = input?.count ?? 0
        if length < minLength {
            return ErrorMessage.passwordMustBeOfLength6
        }
        return nil
    }
}
