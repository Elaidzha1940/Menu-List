//  /*
//
//  Projectt: Menu-List
//  File: CustomModifires.swift
//  Created by: Elaidzha Shchukin
//  Date: 18.02.2024
//
//  */

import SwiftUI

struct StandardButton: ViewModifier {
    
    func body(content: Content) -> some View {
        content
            .buttonStyle(.bordered)
            .tint(.brandPrimary)
            .controlSize(.large)
    }
}

extension View {
    func standardButton() -> some View {
        self.modifier(StandardButton())
    }
}
