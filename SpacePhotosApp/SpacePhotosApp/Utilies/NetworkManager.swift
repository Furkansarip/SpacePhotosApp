//
//  NetworkManager.swift
//  SpacePhotosApp
//
//  Created by Furkan Sarı on 3.02.2023.
//

import Foundation

class NetworkManager {
    static let shared = NetworkManager()
    private init() { }
    
    func download(url:URL,completion : @escaping(_ result:Result <Data,Error>)->() ) {
        let dataTask = URLSession.shared.dataTask(with: url) { data, response, error in
            
            if let error = error {
                completion(.failure(error))
            }
            guard let response = response as? HTTPURLResponse, response.statusCode == 200 else
            {
                completion(.failure(URLError(.badURL)))
                return
            }
            
            guard let data = data else {
                completion(.failure(URLError(.badServerResponse)))
                return
            }
            completion(.success(data))
            
        }
        dataTask.resume()
    }
}
