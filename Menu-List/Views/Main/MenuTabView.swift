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
    @EnvironmentObject var order: Order

    var body: some View {
        
        TabView {
            MenuListView()
                .tabItem { Label("Home", systemImage: "house.fill") }
            
            AccountView()
                .tabItem { Label("Account", systemImage: "person.fill") }
            
            OrderView()
                .tabItem { Label("Order", systemImage: "bag.fill") }
                .badge(order.items.count)
        }
    }
}

#Preview {
    MenuTabView()
        .environmentObject(Order())
}
