//  /*
//
//  Project: Menu-List
//  File: AccountView.swift
//  Created by: Elaidzha Shchukin
//  Date: 07.02.2024
//
//  */

import SwiftUI

struct AccountView: View {
    var body: some View {
        
        NavigationView {
            Text("Account")
                .navigationTitle("Account")
        }
    }
}

#Preview {
    AccountView()
        .preferredColorScheme(.dark)
}
