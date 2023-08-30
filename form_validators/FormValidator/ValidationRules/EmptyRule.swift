//
//  EmptyRule.swift
//  form_validators
//
//  Created by BrainX Technologies on 30/08/2023.
//

struct EmptyRule: ValidationRule {
    var field: String
    
    init(field: String = Constants.empty) {
        self.field = field
    }
    
    func isValid(_ input: String?) -> String? {
        if input?.isEmpty ?? true {
            if field.isEmpty {
                return ErrorMessage.fieldCantBeEmpty
            }
            return "\(field) \(ErrorMessage.fieldCantBeEmpty)"
        }
        return nil
    }
}

