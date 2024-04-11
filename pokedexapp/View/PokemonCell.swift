//
//  PokemonCell.swift
//  pokedexapp
//
//  Created by miguel tomairo on 5/04/24.
//

import SwiftUI
import Kingfisher

struct PokemonCell: View {
    
    let pokemon: Pokemon
    
    @ObservedObject var viewModel = PokemonViewModel()
    
    let backgroundColor: Color
    
    init(pokemon: Pokemon, viewModel: PokemonViewModel) {
        self.pokemon = pokemon
        self.viewModel = viewModel
        self.backgroundColor = Color(viewModel.backgroundColor(forType: pokemon.type))
    }

    var body: some View {
        ZStack {
            VStack(alignment: .leading) {
                Text(pokemon.name.uppercased())
                    .font(.headline)
                    .foregroundColor(.white)
                    .padding(.top,8)
                    .padding(.leading)
                HStack {
                    Text(pokemon.type)
                        .font(.subheadline)
                        .bold()
                        .foregroundColor(.white)
                        .padding(.horizontal,16)
                        .padding(.vertical,8)
                        .overlay(RoundedRectangle(cornerRadius: 20).fill(Color
                            .white
                            .opacity(0.25)))
                        .frame(width: 100, height: 24)
                    KFImage(URL(string: pokemon.imageUrl))
                        .resizable()
                        .scaledToFit()
                        .padding(.bottom,8)
                        .padding(.trailing,8)
                        .frame(width: 80, height: 90)
                    
                }
                
            }
        }
        .background(Color(viewModel.backgroundColor(forType: pokemon.type)))
        .cornerRadius(10)
        .shadow(color: Color(viewModel.backgroundColor(forType: pokemon.type)), radius: 30, x: 0,y: 0)
        
    }
}

#Preview {
    let sampleViewModel = PokemonViewModel()
    
    return Group {
        PokemonCell(pokemon: PokemonList[0], viewModel: sampleViewModel)
    }.previewLayout(.fixed(width: 200, height: 200))
}
