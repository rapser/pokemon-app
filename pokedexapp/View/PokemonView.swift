//
//  PokemonView.swift
//  pokedexapp
//
//  Created by miguel tomairo on 5/04/24.
//

import SwiftUI

struct PokemonView: View {
    
    private let columns = [GridItem(.flexible()),GridItem(.flexible())]
    
    @ObservedObject var viewModel = PokemonViewModel()
    
    var body: some View {
        NavigationView {
            ScrollView {
                LazyVGrid(columns: columns,spacing: 20, content: {
                    ForEach(viewModel.pokemon){ pokemon in                        
                        NavigationLink(destination: PokemmonDetail(pokemon: pokemon),
                                       label: {
                            PokemonCell(pokemon: pokemon, viewModel: viewModel)
                        })
                        .foregroundColor(.black)
                    }
                })
            }.navigationTitle("Pokemon")
        }
    }
}

struct BackButton: View {
    let action: () -> Void
    var body: some View {
        Button(action: action) {
            Image(systemName: "chevron.backward")
                .foregroundColor(.black)
                .padding(.all, 12)
                .background(Color.white)
                .cornerRadius(8.0)
        }
    }
}

#Preview {
    PokemonView()
}
