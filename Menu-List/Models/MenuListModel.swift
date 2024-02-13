//  /*
//
//  Project: Menu-List
//  File: MenuListModel.swift
//  Created by: Elaidzha Shchukin
//  Date: 07.02.2024
//
//  */

import Foundation

struct MenuListModel: Identifiable, Decodable {
    let id: Int
    let name: String
    let description: String
    let price: Double
    let imageURL: String
    let calories: Int
    let protein: Int
    let carbs: Int
}

struct MenuListResponse: Decodable {
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
    
    static let menu                = [sapmleMenuListModel, sapmleMenuListModel, sapmleMenuListModel]
    
    static let orderItemOne        = MenuListModel(id: 001,
                                                   name: "Menu One",
                                                   description: "Menu description",
                                                   price: 8.02,
                                                   imageURL: "",
                                                   calories: 88,
                                                   protein: 88,
                                                   carbs: 88)
    
    static let orderItemTwo        = MenuListModel(id: 002,
                                                   name: "Menu Two",
                                                   description: "Menu description",
                                                   price: 8.02,
                                                   imageURL: "",
                                                   calories: 88,
                                                   protein: 88,
                                                   carbs: 88)
    
    static let orderItemThree      = MenuListModel(id: 003,
                                                   name: "Menu Three",
                                                   description: "Menu description",
                                                   price: 8.02,
                                                   imageURL: "",
                                                   calories: 88,
                                                   protein: 88,
                                                   carbs: 88)
    
    static let orderItemFour       = MenuListModel(id: 004,
                                                   name: "Menu Four",
                                                   description: "Menu description",
                                                   price: 8.02,
                                                   imageURL: "",
                                                   calories: 88,
                                                   protein: 88,
                                                   carbs: 88)
    
    static let orderItems          = [orderItemOne, orderItemTwo, orderItemThree, orderItemFour]
    
}
