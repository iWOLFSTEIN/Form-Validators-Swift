//
//  Constants.swift
//  form_validators
//
//  Created by BrainX Technologies on 30/08/2023.
//

import UIKit

struct Constants {
    static let empty = ""
    static let minPasswordLength = 6
    static let email = "Email"
    static let password = "Password"
    static let confirmPassword = "Confirm Password"
    static let name = "Name"
    static let username = "Username"
    static let errorLabelSpacingFromTextField: CGFloat = 4
    static let errorLabelFontSize: CGFloat = 12
    static let emailRegex = "[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,}"
    static let usernameRegex = "^[a-zA-Z0-9_]{3,20}$"
    static let minUsernameLength = 3
    static let maxUsernameLength = 20
}

