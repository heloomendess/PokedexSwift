//
//  ContentView.swift
//  PokedexSwift
//
//  Created by HELOISA MENDES DO NASCIMENTO BARBOSA on 19/03/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
                    PokedexView()
                        .tabItem {
                            Label("Pokedex", systemImage : "magazine")
                        }
                    
                    StatisticsView()
                        .tabItem {
                            Label("Estatisticas", systemImage : "chart.xyaxis.line")
                            }
                        
                   }.accentColor(.white)
    }
}

#Preview {
    ContentView()
}
