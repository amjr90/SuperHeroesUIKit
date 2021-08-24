//
//  EndPoint.swift
//  SuperHeroesUIKit
//
//  Created by andres jaramillo on 18/08/21.
//

import Foundation

struct EndPoint {
    var path: String
    var queryItems: [URLQueryItem] = []
}

extension EndPoint{
    var url: URL{
        var components = URLComponents()
        components.scheme = "https"
        components.host = "akabab.github.io"
        components.path = "/superhero-api/api/" + path
        components.queryItems = queryItems
        
        guard let url = components.url else {
            preconditionFailure("Invalid URL components: \(components)")
        }
        
        return url
    }
}

extension EndPoint{
    static var allHeroes: Self{
        EndPoint(path: "all.json")
    }
}
