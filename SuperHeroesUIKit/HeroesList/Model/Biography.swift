//
//  Biography.swift
//  SuperHeroesUIKit
//
//  Created by andres jaramillo on 18/08/21.
//
struct Biography: Codable {
    let fullName, alterEgos: String?
    let aliases: [String]?
    let placeOfBirth, firstAppearance, publisher, alignment: String?
}
