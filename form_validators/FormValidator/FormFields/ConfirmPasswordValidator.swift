//
//  ConfirmPasswordValidator.swift
//  form_validators
//
//  Created by BrainX Technologies on 30/08/2023.
//

class ConfirmPasswordValidator: FieldValidator {
    override init() {
        super.init()
        addRule(EmptyRule(field: Constants.confirmPassword))
        addRule(MatchingPasswordRule())
    }
    
     func validate(_ input: String?, _ optional: String?) -> String? {
        guard let input = input, let optional = optional else { return nil }
         
        for rule in rules {
            var validationError = rule.isValid(input)
            if let matchingPasswordRule = rule as? MatchingPasswordRule {
                validationError = matchingPasswordRule.isValid(input, optional: optional)
            }
            if let error = validationError {
                return error
            }
        }
        return nil
    }
}
