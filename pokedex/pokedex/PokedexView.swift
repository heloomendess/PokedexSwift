import SwiftUI

struct PokedexView: View {
    var body: some View {
        
        ZStack {
            Color.red
                .edgesIgnoringSafeArea(.all)

            
            VStack(spacing: 20) {
                
                Text("Pokedex")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .foregroundColor(.white)
                    .padding(.top, 20)

                
                HStack(spacing: 20) {
                    // Coluna 1
                    VStack(spacing: 20) {
                        PokemonCard(imageName: "pikachu", pokemonName: "Pikachu")
                        PokemonCard(imageName: "bulbasaur", pokemonName: "Bulbasaur")
                        PokemonCard(imageName: "charmander", pokemonName: "Charmander")
                    }
                    
                    // Coluna 2
                    VStack(spacing: 20) {
                        PokemonCard(imageName: "squirtle", pokemonName: "Squirtle")
                        PokemonCard(imageName: "eevee", pokemonName: "Eevee")
                        PokemonCard(imageName: "jigglypuff", pokemonName: "Jigglypuff")
                    }
                }
                .padding()
            }
        }
    }
}

// Componente reutilizável
struct PokemonCard: View {
    var imageName: String
    var pokemonName: String
    
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 10)
                .fill(.white)
                .frame(width: 150, height: 150)
            
            VStack(spacing: 10) {
                Image(imageName)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 100, height: 100)
                
                Text(pokemonName)
                    .font(.headline)
                    .foregroundColor(.black)
                    .multilineTextAlignment(.center)
            }
        }
    }
    
    struct PokedexView_Previews: PreviewProvider {
        static var previews: some View {
            PokedexView()
        }
    }
}
