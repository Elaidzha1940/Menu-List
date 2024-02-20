//  /*
//
//  Project: Menu-List
//  File: MLButton.swift
//  Created by: Elaidzha Shchukin
//  Date: 13.02.2024
//
//  */

import SwiftUI

struct MLButton: View {
    let title: LocalizedStringKey
    
    var body: some View {
        VStack {
            Text(title)
                .font(.system(size: 20, weight: .semibold, design: .rounded))
                .frame(maxWidth: .infinity)
                .frame(height: 50)
                .foregroundColor(Color(.systemBackground))
                .background(Color.brandPrimaryColor.gradient)
                .cornerRadius(15)
                .padding()
        }
    }
}

#Preview {
    MLButton(title: "test")
}
