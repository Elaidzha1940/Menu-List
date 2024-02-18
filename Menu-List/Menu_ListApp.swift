//  /*
//
//  Project: Menu-List
//  File: Menu_ListApp.swift
//  Created by: Elaidzha Shchukin
//  Date: 07.02.2024
//
//  */

import SwiftUI

@main
struct Menu_ListApp: App {
    
    var order = Order()
    
    var body: some Scene {
        WindowGroup {
            MenuTabView().environmentObject(order)
                //.preferredColorScheme(.dark)
        }
    }
}
