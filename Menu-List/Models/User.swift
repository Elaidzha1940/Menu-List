//  /*
//
//  Project: Menu-List
//  File: User.swift
//  Created by: Elaidzha Shchukin
//  Date: 13.02.2024
//
//  */

import Foundation

struct User: Codable {
    var firstName       = ""
    var lastName        = ""
    var email           = ""
    var birthdate       = Date()
    var extraNapkins    = false
    var frequentRefills = false
}
