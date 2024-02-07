//  /*
//
//  Project: Menu-List
//  File: MenuTabView.swift
//  Created by: Elaidzha Shchukin
//  Date: 07.02.2024
//
//  */

import SwiftUI

struct MenuTabView: View {
    var body: some View {
        
        TabView {
            MenuListView()
                .tabItem {
                    Image(systemName: "house.fill")
                    Text("Home")
                }
            
            AccountView()
                .tabItem {
                    Image(systemName: "person.fill")
                    Text("Account")
                }
            
            OrderView()
                .tabItem {
                    Image(systemName: "bag.fill")
                    Text("Home")
                }
        }
        .accentColor(Color("brandPrimary"))
    }
}

#Preview {
    MenuTabView()
        .preferredColorScheme(.dark)
}
