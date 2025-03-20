//
//  StatisticsView.swift
//  pokedex
//
//  Created by Aluno Mack on 19/03/25.
//

import SwiftUI

struct StatisticsView: View {
    // Seleciona quatro Pokémons
    let meusPokemons: [Pokemon] = [
        pokemons[0],
        pokemons[3],
        pokemons[6],
        pokemons[24],
        pokemons[5],
        pokemons[10],
        pokemons[2],
        pokemons[18]
    ]

    // Conta os tipos
    var contadorTipos: [ElementType: Int] {
        contarTipos(pokemons: meusPokemons)
    }

    var body: some View {
        ZStack {
            
            Color.red
                .edgesIgnoringSafeArea(.all)

            VStack(spacing: 20) {
                Text("Meus Pokemons")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .foregroundColor(.white)
                    .padding(.top, 30)

              
                ZStack {
                    Circle()
                        .fill(Color.yellow)
                        .frame(width: 250, height: 285)

                    Text("\(meusPokemons.count)")
                        .font(.system(size: 100, weight: .bold, design: .default))
                        .foregroundColor(.black)
                }

                
                VStack {
                    Text("Tipos de Pokémons")
                        .font(.title2)
                        .fontWeight(.semibold)
                        .foregroundColor(.white)
                        .padding(.bottom, 10)

                   
                    ScrollView {
                                           VStack(spacing: 10) {
                                               ForEach(todosOsTipos, id: \.self) { tipo in
                                                   HStack {
                                                       Text(tipo.rawValue.capitalized)
                                                           .font(.headline)
                                                           .foregroundColor(.black)
                                                       Spacer()
                                                       Text("\(contadorTipos[tipo] ?? 0)")
                                                           .font(.subheadline)
                                                           .foregroundColor(.gray)
                                                   }
                                                   .padding()
                                                   .background(Color.white.opacity(0.8))
                                                   .cornerRadius(8)
                                               }
                                           }
                                           .padding(.horizontal)
                                       }
                                       .frame(height: 300) // Altura fixa para a tabela
                                   }
                                   .padding()
                                   .background(Color.red.opacity(0.8))
                                   .cornerRadius(12)
                                   .padding(.horizontal)
                               }
                           }
                       }
                   }
            
struct StatisticsView_Previews: PreviewProvider {
    static var previews: some View {
        StatisticsView()
    }
}
