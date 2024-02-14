//  /*
//
//  Project: Menu-List
//  File: Order.swift
//  Created by: Elaidzha Shchukin
//  Date: 14.02.2024
//
//  */

import SwiftUI

final class Order: ObservableObject {
    @Published var items: [MenuListModel] = []
    
    var totalPrice: Double {
        items.reduce(0) { $0 + $1.price }
    }
    
    func add(_ menu: MenuListModel) {
        items.append(menu)
    }
    
    func deleteItems(at offsets: IndexSet) {
        items.remove(atOffsets: offsets)
    }
}
