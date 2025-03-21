import SwiftUI

struct PokedexView: View {
    
    var poke: Pokemon = pokemons[24]
    @State private var searchText = ""

    var body: some View {
        NavigationView {
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
                            PokemonCard(imageName: "pikachu", pokemonName: "\(poke.name)", pokemonDescription: "Ataque: 100 \nDefesa: 30" )
                            PokemonCard(imageName: "bulbasaur", pokemonName: "Bulbasaur", pokemonDescription: "Ataque: 110 \nDefesa: 15")
                            PokemonCard(imageName: "charmander", pokemonName: "Charmander", pokemonDescription: "Ataque: 250 \nDefesa: 10")
                        }
                        
                        VStack(spacing: 20) {
                            PokemonCard(imageName: "squirtle", pokemonName: "Squirtle", pokemonDescription: "Ataque: 70 \nDefesa: 60")
                            PokemonCard(imageName: "eevee", pokemonName: "Eevee", pokemonDescription: "Ataque: 90 \nDefesa: 20")
                            PokemonCard(imageName: "jigglypuff", pokemonName: "Jigglypuff", pokemonDescription: "Ataque: 10 \nDefesa: 30")
                        }
                    }
                    .padding()
                }
            }
            .navigationBarHidden(true)
        }
    }
}

struct PokemonCard: View {
    var imageName: String
    var pokemonName: String
    var pokemonDescription: String

    var body: some View {
        NavigationLink(destination: PokemonDetailView(pokemonName: pokemonName, pokemonDescription: pokemonDescription, pokemonImage: imageName)) {
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
}
struct PokemonDetailView: View {
    var pokemonName: String
    var pokemonDescription: String
    var pokemonImage: String

    
    var body: some View {
        VStack {
            Text("Detalhes do Pokémon")
                .font(.title)
                .fontWeight(.bold)
                .padding()
            
            Image(pokemonImage)
                .resizable()
                .scaledToFit()
                .frame(width: 250, height: 250)
                .padding()
            Text(pokemonName)
                .font(.title)
                .padding()
                .fontWeight(.bold)
            Text(pokemonDescription)
                .fontWeight(.medium)
        }
        .navigationBarTitle(pokemonName, displayMode: .inline)
    }
}

struct PokedexView_Previews: PreviewProvider {
    static var previews: some View {
        PokedexView()
    }
}
