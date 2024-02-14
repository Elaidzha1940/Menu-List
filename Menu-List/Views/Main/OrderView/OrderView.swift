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
                        }
                        .onDelete(perform: deleteItems)
                    }
                    .listStyle(.plain)
                    
                    Button(action: {
                    //action
                    }, label: {
                        MLButton(title: "$82.0 - Place Order")
                    })
                    .padding(.bottom, 10)
                }
                
                if order.items.isEmpty {
                    EmptyState(imageName: "empty-order", message: "You have no items in your order. \nPlease add an appetizer!")
                }
            }
            .navigationTitle("Orders")
        }
    }
    
    func deleteItems(at offsets: IndexSet) {
        order.items.remove(atOffsets: offsets)
    }
}

#Preview {
    OrderView()
}
