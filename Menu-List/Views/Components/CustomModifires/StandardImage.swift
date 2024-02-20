//  /*
//
//  Project: Menu-List
//  File: StandardImage.swift
//  Created by: Elaidzha Shchukin
//  Date: 19.02.2024
//
//  */
 
import SwiftUI

struct StandardImage: ViewModifier {
    
    func body(content: Content) -> some View {
        content
            .scaledToFit()
            .frame(width: 130, height: 90)
            .cornerRadius(15)
    }
}
