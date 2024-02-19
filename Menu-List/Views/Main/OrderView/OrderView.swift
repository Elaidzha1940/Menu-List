//  /*
//
//  Project: Menu-List
//  File: OrderView.swift
//  Created by: Elaidzha Shchukin
//  Date: 07.02.2024
//
//  */

import SwiftUI

struct OrderView: View {
    @EnvironmentObject var order: Order
    
    var body: some View {
        NavigationView {
            ZStack {
                VStack {
                    List {
                        ForEach(order.items) { menu in
                            MenuListCell(menu: menu)
                                .listRowSeparator(.hidden)
                        }
                        .onDelete(perform: order.deleteItems)
                    }
                    .listStyle(.plain)
                    
                    Button(action: {
                        print("order")
                    }, label: {
                        MLButton(title: "$\(order.totalPrice, specifier: "%.2f") - Place Order")
                    })
                    .padding(.bottom, 15)
                }
                
                if order.items.isEmpty {
                    EmptyState(imageName: "empty-order",
                               message: "You have no items in your order.\nPlease add an appetizer!")
                }
            }
            .navigationTitle("Orders")
        }
    }
}

//#if DEBUG

#Preview {
    OrderView()
        .environmentObject(Order())
}

//#endif



