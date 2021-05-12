//
//  PokemonData.swift
//  PokemonSwiftUI
//
//  Created by Nalin Porwal on 10/05/21.
//

import Foundation
import UIKit
struct Pokemon {
    let name: String
    let attack: Int = 100
    let height: Int = 240
    let weight: Int = 49
    let live: Int = 56
    let imageName: String
    let startColor: UIColor
    let endColor: UIColor
    let discription: String
}

struct Contant {
    static var pokemonArray: [Pokemon] = [.init(name: "Bulbasaur", imageName: "pokemon1", startColor: #colorLiteral(red: 0.3582331836, green: 0.6045551896, blue: 0.4390111268, alpha: 1), endColor: #colorLiteral(red: 0.592464447, green: 0.780174911, blue: 0.6165935993, alpha: 1),
                                                discription: "There is a plant seed on its back right from the day this Pokémon is born. The seed slowly grows larger"),
                                          .init(name: "Pikachu", imageName: "pokemon2", startColor: #colorLiteral(red: 0.9189363718, green: 0.8092147708, blue: 0.463778615, alpha: 1), endColor: #colorLiteral(red: 0.8215408921, green: 0.6988416314, blue: 0.4041560888, alpha: 1), discription: "Pikachu that can generate powerful electricity have cheek sacs that are extra soft and super stretchy."),
                                          .init(name: "Squirtle", imageName: "pokemon3", startColor: #colorLiteral(red: 0.4033344984, green: 0.6413770318, blue: 0.7212581038, alpha: 1), endColor: #colorLiteral(red: 0.6265895963, green: 0.8218108416, blue: 0.8735714555, alpha: 1), discription: "When it retracts its long neck into its shell, it squirts out water with vigorous force."),
                                          .init(name: "Charizard", imageName:"pokemon4" , startColor: #colorLiteral(red: 0.6673814654, green: 0.4255449176, blue: 0.2924379706, alpha: 1), endColor: #colorLiteral(red: 0.9357172251, green: 0.6491820216, blue: 0.4122993946, alpha: 1), discription: "It spits fire that is hot enough to melt boulders. It may cause forest fires by blowing flames.")
                                            ]
}
