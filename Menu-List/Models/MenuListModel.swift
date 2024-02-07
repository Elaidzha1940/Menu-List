//  /*
//
//  Project: Menu-List
//  File: MenuListModel.swift
//  Created by: Elaidzha Shchukin
//  Date: 07.02.2024
//
//  */

import Foundation

struct MenuListModel: Identifiable, Codable {
    let id: Int
    let name: String
    let description: String
    let price: Double
    let imageURL: String
    let calories: Int
    let protein: Int
    let carbs: Int 
}

struct MenuListResponse {
    let request: [MenuListModel]
}

struct MockData {
    static let sapmleMenuListModel = MenuListModel(id: 888,
                                                   name: "Menu",
                                                   description: "Menu description",
                                                   price: 8.02,
                                                   imageURL: "",
                                                   calories: 88,
                                                   protein: 88,
                                                   carbs: 88)
    
    static let menu = [sapmleMenuListModel, sapmleMenuListModel, sapmleMenuListModel]
}
