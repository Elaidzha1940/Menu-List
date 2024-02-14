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
    
    func add(_ menu: MenuListModel) {
        items.append(menu)
    }
}
