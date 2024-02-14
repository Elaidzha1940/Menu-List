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
    let imageName: String
    let message: String
    
    var body: some View {
        
        ZStack {
            Color(.systemBackground)
                .edgesIgnoringSafeArea(.all)
            
            VStack(spacing: 1) {
                Image(imageName)
                    .resizable()
                    .scaledToFit()
                    .cornerRadius(15)
                    .frame(height: 150)
                
                Text(message)
                    .font(.system(size: 18, weight: .semibold, design: .monospaced))
                    .multilineTextAlignment(.center)
                    .foregroundColor(.secondary)
                    .padding()
            }
            .offset(y: -50)
        }
    }
}

#Preview {
    EmptyState(imageName: "empty-order", message: "Test message")
}
