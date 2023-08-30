//
//  MatchingPasswordRule.swift
//  form_validators
//
//  Created by BrainX Technologies on 30/08/2023.
//

struct MatchingPasswordRule : ValidationRule {
    internal func isValid(_ input: String?) -> String? { return nil }
    
    func isValid(_ input: String?, optional: String?) -> String? {
        if input != optional {
            return ErrorMessage.passwordsDoNotMatch
        }
        return nil
    }
}
