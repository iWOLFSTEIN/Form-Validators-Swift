//
//  PasswordValidator.swift
//  form_validators
//
//  Created by BrainX Technologies on 30/08/2023.
//

class PasswordValidator: FieldValidator {
    override init() {
        super.init()
        addRule(EmptyRule(field: Constants.password))
        addRule(MinLengthRule())
    }
}
