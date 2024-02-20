//  /*
//
//  Project: Menu-List
//  File: Date+Ext.swift
//  Created by: Elaidzha Shchukin
//  Date: 20.02.2024
//
//  */

import SwiftUI

extension Date {
    var eightennYearsAgo: Date {
        Calendar.current.date(byAdding: .year, value: -18, to: Date())!
    }
    
    var oneHundredTenYearsAgo: Date {
        Calendar.current.date(byAdding: .year, value: -110, to: Date())!
    }
}
