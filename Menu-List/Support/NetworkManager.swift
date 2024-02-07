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
    private let menuURL = baseURL + ""
    
    private init() {}
    
    func getMenu(completion: @escaping (Result<[MenuListModel], MError>) -> ()) {
        guard let url = URL(string: menuURL) else {
            completion(.failure(.invalidURL))
            return
        }
        
        let task = URLSession.shared.dataTask(with: URLRequest(url: url)) { data, response, error in
            if let _ = error {
                completion(.failure(.unableToComplete))
                return
            }
            
            guard let response = response as? HTTPURLResponse, response.statusCode == 200 else {
                completion(.failure(.invalidResponse))
                return
            }
            
            guard let data = data else {
                completion(.failure(.invalidData))
                return
            }
            
            do {
                let decoder = JSONDecoder()
                let decodedResponse = try decoder.decode(MenuListResponse.self, from: data)
                completion(.success(decodedResponse.request))
            } catch {
                completion(.failure(.invalidData))
            }
        }
        task.resume()
    }
}
