//  /*
//
//  Project: Menu-List
//  File: MenuListViewModel.swift
//  Created by: Elaidzha Shchukin
//  Date: 09.02.2024
//
//  */

import SwiftUI

final class MenuListViewModel: ObservableObject {
    @Published var menu: [MenuListModel] = []
    
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
