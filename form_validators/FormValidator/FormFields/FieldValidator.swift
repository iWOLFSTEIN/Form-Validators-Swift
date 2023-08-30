//
//  FieldValidator.swift
//  form_validators
//
//  Created by BrainX Technologies on 30/08/2023.
//

class FieldValidator {
    var rules: [ValidationRule] = []
    
    func addRule(_ rule: ValidationRule) {
        rules.append(rule)
    }
    
    func validate(_ input: String?) -> String? {
        guard let input = input else { return nil }
        for rule in rules {
            if let validationError = rule.isValid(input) {
                return validationError
            }
        }
        return nil
    }
}

