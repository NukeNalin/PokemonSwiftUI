//
//  ContentView.swift
//  PokemonSwiftUI
//
//  Created by Nalin Porwal on 10/05/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView{
            ScrollView( .vertical, showsIndicators: false) {
            VStack(alignment: .leading) {
                    ForEach(0 ..< Contant.pokemonArray.count) { item in
                        CardView(pokemon: Contant.pokemonArray[item])
                            .padding(.leading,20)
                            .padding(.trailing,20)
                            .padding(.bottom,20)
                    }
                }
            }.navigationTitle("Pokemon")
        }
    }
}

struct CardView: View {
    var pokemon: Pokemon
    @State private var isOpen: Bool = false
    
    var body: some View {
        ZStack(alignment: .topLeading){
            ZStack {
                LinearGradient(gradient: Gradient(colors: [Color(pokemon.endColor), Color(pokemon.startColor)]), startPoint: .leading, endPoint:  .trailing)
                VStack{
                    HStack{
                        VStack(alignment:.leading){
                            HStack {
                                Text("Attack : ")
                                    .font(.title)
                                    .fontWeight(.bold)
                                    .foregroundColor(Color.white)
                                Text("\(pokemon.attack)")
                                    .font(.title2)
                                    .fontWeight(.bold)
                                    .foregroundColor(Color.white)
                            }
                            HStack {
                                Text("Height : ")
                                    .font(.title)
                                    .fontWeight(.bold)
                                    .foregroundColor(Color.white)
                                Text("\(pokemon.height) cm")
                                    .font(.title2)
                                    .fontWeight(.bold)
                                    .foregroundColor(Color.white)
                            }
                            HStack {
                                Text("weight : ")
                                    .font(.title)
                                    .fontWeight(.bold)
                                    .foregroundColor(Color.white)
                                Text("\(pokemon.weight) kg")
                                    .font(.title2)
                                    .fontWeight(.bold)
                                    .foregroundColor(Color.white)
                            }
                            HStack {
                                Text("Points : ")
                                    .font(.title)
                                    .fontWeight(.bold)
                                    .foregroundColor(Color.white)
                                Text("\(pokemon.live)")
                                    .font(.title2)
                                    .fontWeight(.bold)
                                    .foregroundColor(Color.white)
                            }
                        }
                        Image(pokemon.imageName)
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .frame(width: 100, height: 100, alignment: .leading)
                    }
                    Text("\(pokemon.discription)")
                        .font(.title3)
                        .fontWeight(.bold)
                        .foregroundColor(Color.white)
                        .padding()
                }
                
            }
            .cornerRadius(20)
            .shadow(color: Color(pokemon.endColor), radius: 20, x: /*@START_MENU_TOKEN@*/0.0/*@END_MENU_TOKEN@*/, y: /*@START_MENU_TOKEN@*/0.0/*@END_MENU_TOKEN@*/)
            .offset(x: isOpen ? -10 : 0)
            .rotation3DEffect(
                Angle(degrees: isOpen ? 4 : 0),
                axis: (x: 0.0, y: 10, z: 0.0))
            .animation(Animation.spring(response: 0.6, dampingFraction: 0.6, blendDuration: 0).delay(0.3))
            ZStack(alignment: .topLeading) {
                LinearGradient(gradient: Gradient(colors: [Color(pokemon.startColor), Color(pokemon.endColor)]), startPoint: .leading, endPoint: /*@START_MENU_TOKEN@*/ .trailing/*@END_MENU_TOKEN@*/)
                Image(pokemon.imageName)
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 250, height: 250, alignment: .leading)

                Text(pokemon.name)
                    .font(.title)
                    .fontWeight(.bold)
                    .foregroundColor(Color.white)
                    .multilineTextAlignment(.leading)
                    .padding()
                    .padding(.top, 230)
                Image("pokemonball")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 70, height: 70, alignment: .leading)
                    .padding(.leading,270)
                    .padding(.top,30)
                
            }
            .cornerRadius(20)
            .shadow(color: Color(pokemon.startColor), radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/, x: /*@START_MENU_TOKEN@*/0.0/*@END_MENU_TOKEN@*/, y: /*@START_MENU_TOKEN@*/0.0/*@END_MENU_TOKEN@*/)
            .opacity(/*@START_MENU_TOKEN@*/0.8/*@END_MENU_TOKEN@*/)
            .offset(x: isOpen ? 350 : 0)
            .rotationEffect(Angle(degrees: isOpen ? -10 : 0))
            .animation(Animation.spring(response: 0.6, dampingFraction: 0.6, blendDuration: 0).delay(0.3))
        }.frame(width: 380, height: 300, alignment: .center)
            .onTapGesture {
                self.isOpen.toggle()
            }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
