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
    @Published var isLoading = false
    @Published var isShowingDetail = false
    @Published var selectedMenuListModel: MenuListModel?
    
    func getMenuList() {
        isLoading = true
        NetworkManager.shared.getMenu { result in
            DispatchQueue.main.async { 
                self.isLoading = true
                switch result {
                case .success(let menu):
                    self.menu = menu
                case .failure(let error):
                    switch error {
                    case .invalidResponse:
                        self.alertItem = AlertContext.invalidResponse
                    case .invalidURL:
                        self.alertItem = AlertContext.invalidURL
                    case .invalidData:
                        self.alertItem = AlertContext.invalidData
                    case .unableToComplete:
                        self.alertItem = AlertContext.unableToComplete
                    }
                }
            }
        }
    }
}
