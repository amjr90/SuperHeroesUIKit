//
//  Networking.swift
//  SuperHeroesUIKit
//
//  Created by andres jaramillo on 18/08/21.
//

import Foundation

class Networking {
    
    func get(endPoint: EndPoint, completion: @escaping(NetworkingResponse)->Void) {
        let url = endPoint.url
        
        let task = URLSession.shared.dataTask(with: url) {(data, response, error) in
            let networkingResponse = NetworkingResponse(data: data, response: response, error: error)
            completion(networkingResponse)
        }
        
        task.resume()
    }
}

