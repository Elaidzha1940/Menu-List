//  /*
//
//  Project: Menu-List
//  File: MenuListView.swift
//  Created by: Elaidzha Shchukin
//  Date: 07.02.2024
//
//  */

import SwiftUI

struct MenuListView: View {
    var body: some View {
        
        NavigationView {
            Text("Menu List View")
                .navigationTitle("Menu List")
        }
    }
}

#Preview {
    MenuListView()
        .preferredColorScheme(.dark)
}