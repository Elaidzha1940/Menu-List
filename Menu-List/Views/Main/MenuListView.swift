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
    @State private var menu: [MenuListModel] = []
    
    var body: some View {
        
        NavigationView {
            List(menu) { menu in
              MenuListCell(menu: menu)
            }
            .listStyle(.grouped)
            .navigationTitle("Menu List")
        }
        .onAppear {
            getMenuList()
        }
    }
    
    func getMenuList() {
        NetworkManager.shared.getMenu { result in
            DispatchQueue.main.async {
                switch result {
                case .success(let menu):
                    self.menu = menu
                case .failure(let error):
                    print(error.localizedDescription)
                }
            }
        }
    }
}

#Preview {
    MenuListView()
        .preferredColorScheme(.dark)
}
