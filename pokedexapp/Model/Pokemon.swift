//
//  Pokemon.swift
//  pokedexapp
//
//  Created by miguel tomairo on 6/04/24.
//

import Foundation

struct Pokemon: Identifiable, Decodable {
    
    let id: Int
    let name: String
    let imageUrl: String
    let type: String
    let description: String
    let weight: Int
    let height: Int
}

let PokemonList: [Pokemon] = [
    .init(id: 1, name: "Bulbasaur", imageUrl: "https://firebasestorage.googleapis.com/v0/b/pokedex-bb36f.appspot.com/o/pokemon_images%2F2CF15848-AAF9-49C0-90E4-28DC78F60A78?alt=media&token=15ecd49b-89ff-46d6-be0f-1812c948e334", type: "poison", description: "Bulbasaur can be seen napping in bright sunlight.\nThere is a seed on its back. By soaking up the sun’s rays,\nthe seed grows progressively larger.", weight: 5, height: 5),
    .init(id: 2, name: "bulbasaur", imageUrl: "", type: "poison", description: "", weight: 5, height: 5),
    .init(id: 3, name: "ivysaur", imageUrl: "", type: "fire", description: "", weight: 5, height: 5),
    .init(id: 4, name: "ivysaur", imageUrl: "", type: "fire", description: "", weight: 5, height: 5),
    .init(id: 5, name: "ivysaur", imageUrl: "", type: "fire", description: "", weight: 5, height: 5),
    .init(id: 6, name: "ivysaur", imageUrl: "", type: "poison", description: "", weight: 5, height: 5)

]
