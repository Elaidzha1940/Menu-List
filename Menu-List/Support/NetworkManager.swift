//  /*
//
//  Project: Menu-List
//  File: NetworkManager.swift
//  Created by: Elaidzha Shchukin
//  Date: 07.02.2024
//
//  */

import Foundation

final class NetworkManager {
    static let shared = NetworkManager()
    
    static let baseURL = "https://noma.dk/noma-in-kyoto-magazine/"
    static let menuURL = baseURL + ""
    
    private init() {}
    
    func getMenu(completion: @escaping (Result<[MenuListModel], Error>) -> ()) {
        
    }
}
