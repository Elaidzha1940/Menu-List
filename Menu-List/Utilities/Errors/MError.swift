//  /*
//
//  Project: Menu-List
//  File: MError.swift
//  Created by: Elaidzha Shchukin
//  Date: 07.02.2024
//
//  */

import Foundation

enum MError: Error {
    case invalidURL       // simple url
    case invalidResponse  // error 404 or 500
    case invalidData      // data we get back, if we can't parsing or somethinf is wrong
    case unableToComplete // general error, if wi-fi turned off
}
