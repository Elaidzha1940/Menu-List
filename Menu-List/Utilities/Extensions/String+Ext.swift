//  /*
//
//  Project: Menu-List
//  File: String+Ext.swift
//  Created by: Elaidzha Shchukin
//  Date: 13.02.2024
//
//  */

import SwiftUI

extension String {
    
    var isValidEmail: Bool {
        let emailFormat         = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,64}"
        let emailPredicate      = NSPredicate(format: "SELF MATCHES %@", emailFormat)
        return emailPredicate.evaluate(with: self)
    }
}
