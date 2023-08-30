//
//  ValidateRule.swift
//  form_validators
//
//  Created by BrainX Technologies on 30/08/2023.
//

import Foundation

protocol ValidationRule {
    func isValid(_ input: String?) -> String?
}

