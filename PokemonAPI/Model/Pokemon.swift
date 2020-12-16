//
//  Pokemon.swift
//  PokemonAPI
//
//  Created by Student Laptop_7/19_1 on 12/16/20.
//

import Foundation

struct Pokemon: Codable {
    let name: String
    let url: String
}

struct PokemonList: Codable {
    let next: String?
    let results: [Pokemon]
}

struct PokemonImage: Codable {
    let sprites: Image
}

struct Image: Codable {
    let frontDefault: String
    let backDefault: String
    
    enum CodingKeys: String, CodingKey {
        case frontDefault = "front_default"
        case backDefault = "back_default"
    }
}
