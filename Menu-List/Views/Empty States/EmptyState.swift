//  /*
//
//  Project: Menu-List
//  File: EmptyState.swift
//  Created by: Elaidzha Shchukin
//  Date: 14.02.2024
//
//  */

import SwiftUI

struct EmptyState: View {
    var body: some View {
        
        ZStack {
            Color(.systemBackground)
                .edgesIgnoringSafeArea(.all)
            
            VStack {
                Image("")
            }
        }
    }
}

#Preview {
    EmptyState()
}
