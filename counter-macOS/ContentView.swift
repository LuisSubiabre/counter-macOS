//
//  ContentView.swift
//  counter-macOS
//
//  Created by Luis Subiabre Salviat on 26-01-22.
//

import SwiftUI

struct ContentView: View {
    @State var valorPlayer1 = 24
    @State var valorPlayer2 = 24
    var body: some View {

        VStack{
            Image("logoLS")
                .resizable()
                .scaledToFit()
                .frame(width: 96, height: 96)
                .clipShape(Circle())
            HStack {
                
                VStack {
                    Text("Player 1")
                        .font(.largeTitle)
                    Text("\(valorPlayer1)")
                        .padding()
                        .font(.title2)
                    HStack {
                        Button("+") {
                            self.valorPlayer1 += 1
                           }
                        
                        Button("-") {
                            self.valorPlayer1 -= 1
                        }
                    }

                }
    Divider()
                VStack {
                    Text("Player 2")
                        .font(.largeTitle)
                    Text("\(valorPlayer2)")
                        .padding()
                        .font(.title2)
                    HStack {
                        Button("+") {
                            self.valorPlayer2 += 1
                           }
                        
                        Button("-") {
                            self.valorPlayer2 -= 1
                        }
                    }

                }
            }
        }

       
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
