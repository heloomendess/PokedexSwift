import SwiftUI

struct PokedexView: View {
    
    var poke: Pokemon = pokemons[24]
    @State private var searchText = ""

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

                HStack {
                    TextField("Pesquisar Pokemon", text: $searchText)
                        .padding(10)
                        .background(Color.white)
                        .cornerRadius(10)
                        .padding(.horizontal, 20)
                }

                HStack(spacing: 20) {
                    VStack(spacing: 20) {
                        PokemonCard(imageName: "pikachu", pokemonName: "\(poke.name)")
                        PokemonCard(imageName: "bulbasaur", pokemonName: "Bulbasaur")
                        PokemonCard(imageName: "charmander", pokemonName: "Charmander")
                    }

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
}

struct PokedexView_Previews: PreviewProvider {
    static var previews: some View {
        PokedexView()
    }
}
