//
//  ContentView.swift
//  Api
//
//  Created by MAESTRO603 on 05/11/25.
//

import SwiftUI

struct ContentView: View {
    @StateObject var pokemonList = PokemonListViewModel()
    
    var body: some View {
        VStack {
           
            Text("\(pokemonList.pokemon.count)")
            Text(pokemonList.pokemon.next)
            Text(pokemonList.pokemon.previous ?? "")
            
            
            List(){
                ForEach(pokemonList.pokemon.results, id: \.self){  pokemon in
                    VStack{
                        Text(pokemon.name)
                        Text(pokemon.url)
                    }
                }
            }
        }
        .padding()
        .onAppear(){
            pokemonList.getPokemonList()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
