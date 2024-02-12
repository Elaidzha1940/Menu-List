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
    @State private var isShowingDetail = false
    @State private var selectedMenuListModel: MenuListModel?
    
    var body: some View {
        
        ZStack {
            NavigationView {
                List(viewModel.menu) { menu in
                    MenuListCell(menu: menu)
                        .onTapGesture {
                            selectedMenuListModel = menu
                            isShowingDetail = true
                        }
                }
                .listStyle(.grouped)
                .navigationTitle("Menu List")
                .disabled(isShowingDetail)
            }
            .onAppear {
                viewModel.getMenuList()
            }
            .blur(radius: isShowingDetail ? 20 : 0)
            
            if isShowingDetail {
                MenuListDetailView(menu: selectedMenuListModel!,
                                   isShowingDetail: $isShowingDetail)
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
