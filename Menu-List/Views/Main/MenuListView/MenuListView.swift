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
                        .onTapGesture {
                            viewModel.selectedMenuListModel = menu
                            viewModel.isShowingDetail = true
                        }
                }
                .listStyle(.plain)
                .navigationTitle("Menu List")
                .disabled(viewModel.isShowingDetail)
            }
            .onAppear {
                viewModel.getMenuList()
            }
            .blur(radius: viewModel.isShowingDetail ? 20 : 0)
            
            if viewModel.isShowingDetail {
                MenuListDetailView(menu: viewModel.selectedMenuListModel!,
                                   isShowingDetail: $viewModel.isShowingDetail)
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
}
