//  /*
//
//  Project: Menu-List
//  File: MenuListModel.swift
//  Created by: Elaidzha Shchukin
//  Date: 07.02.2024
//
//  */

import Foundation

struct MenuListModel: Decodable, Identifiable {
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
    static let sapmleMenuListModel = MenuListModel(id: 648,
                                                   name: "Menu",
                                                   description: "Menu description",
                                                   price: 5.05,
                                                   imageURL: "",
                                                   calories: 54,
                                                   protein: 37,
                                                   carbs: 72)
    
    static let menu                = [sapmleMenuListModel, sapmleMenuListModel, sapmleMenuListModel]
    
    static let orderItemOne        = MenuListModel(id: 001,
                                                   name: "Menu One",
                                                   description: "Menu description",
                                                   price: 8.02,
                                                   imageURL: "",
                                                   calories: 38,
                                                   protein: 43,
                                                   carbs: 15)
    
    static let orderItemTwo        = MenuListModel(id: 002,
                                                   name: "Menu Two",
                                                   description: "Menu description",
                                                   price: 8.02,
                                                   imageURL: "",
                                                   calories: 56,
                                                   protein: 86,
                                                   carbs: 39)
    
    static let orderItemThree      = MenuListModel(id: 003,
                                                   name: "Menu Three",
                                                   description: "Menu description",
                                                   price: 8.02,
                                                   imageURL: "",
                                                   calories: 38,
                                                   protein: 94,
                                                   carbs: 76)
    
    static let orderItemFour       = MenuListModel(id: 004,
                                                   name: "Menu Four",
                                                   description: "Menu description",
                                                   price: 8.02,
                                                   imageURL: "",
                                                   calories: 48,
                                                   protein: 85,
                                                   carbs: 29)
    
    static let orderItems          = [orderItemOne, orderItemTwo, orderItemThree, orderItemFour]
    
}
