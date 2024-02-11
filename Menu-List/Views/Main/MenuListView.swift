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
    @StateObject var viewModel = MenuListViewModel()
    
    var body: some View {
        
        ZStack {
            NavigationView {
                List(viewModel.menu) { menu in
                    MenuListCell(menu: menu)
                }
                .listStyle(.grouped)
                .navigationTitle("Menu List")
            }
            .onAppear {
                viewModel.getMenuList()
            }
            
            if viewModel.isLoading {
                LoadingView()
            }
        }
        .alert(item: $viewModel.alertItem) { alert in
            Alert(title: alert.title, message: alert.message, dismissButton: alert.dismissButton)
        }
    }
}

#Preview {
    MenuListView()
        .preferredColorScheme(.dark)
}
