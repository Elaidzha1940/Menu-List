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
    @Published var alertItem: AlertItem?
    
    func getMenuList() {
        NetworkManager.shared.getMenu { result in
            DispatchQueue.main.async { [self] in
                switch result {
                case .success(let menu):
                    self.menu = menu
                case .failure(let error):
                    switch error {
                    case .invalidResponse:
                        alertItem = AlertContext.invalidResponse
                    case .invalidURL:
                        alertItem = AlertContext.invalidURL
                    case .invalidData:
                        alertItem = AlertContext.invalidData
                    case .unableToComplete:
                        alertItem = AlertContext.unableToComplete
                    }
                }
            }
        }
    }
}
