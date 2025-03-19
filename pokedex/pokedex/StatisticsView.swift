//
//  StatisticsView.swift
//  pokedex
//
//  Created by Aluno Mack on 19/03/25.
//

import SwiftUI

struct StatisticsView: View {
    var body: some View {
        
        VStack(spacing: 20) {
            
            Text("Pokedex")
                .font(.largeTitle)
                .fontWeight(.bold)
                .foregroundColor(.white)
                .padding(.top, 20)
            
            ZStack {
                Text("Pokedex")
                Color.red
                    .edgesIgnoringSafeArea(.all)
            }
        }
    }
}

struct StatisticsView_Previews: PreviewProvider {
    static var previews: some View {
        StatisticsView()
    }
}
