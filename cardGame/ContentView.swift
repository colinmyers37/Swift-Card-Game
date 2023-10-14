//
//  ContentView.swift
//  cardGame
//
//  Created by Colin Myers on 10/13/23.
//

import SwiftUI

struct ContentView: View {
    
    @State var playerCard = "card7"
    @State var cpuCard = "card13"
    
    @State var playerScore = 0
    @State var cpuScore = 0
    
    var body: some View {
        
        ZStack{
            
            
            Image("background-plain")
                .resizable()
                .ignoresSafeArea()
            
            VStack {
            Spacer()
            Image("logo")
                Spacer()
                
                HStack {
                    Spacer()
                    Image(playerCard)
                    Spacer()
                    Image(cpuCard)
                    Spacer()
                }
                Spacer()
                
                Button {
                    deal()
                } label: {
                    Image("button")
                }

                
        
                Spacer()
                HStack {
                    Spacer()
                    VStack {
                     Text("Player")
                            .font(.headline)
                            .padding(.bottom, 10.0)
                        Text(String(playerScore))
                            .font(.largeTitle)
                    }
                    Spacer()
                    VStack {
                     Text("CPU")
                            .font(.headline)
                            .padding(.bottom, 10.0)
                        Text(String(cpuScore))
                            .font(.largeTitle)
                    }
                    Spacer()
                }
                .foregroundColor(.white)
                Spacer()
                
                Button("Reset Score") {
                    playerCard = "back"
                    cpuCard = "back"
                    playerScore = 0
                    cpuScore = 0
                }
                .foregroundColor(.white)
                Spacer()
                
            }
        }
    }
    
    func deal() {
        //randomize player card
        var playerCardValue = Int.random(in: 2...14)
        playerCard = "card" + String(playerCardValue)
    
        //randomize cpu card
        var cpuCardValue = Int.random(in: 2...14)
        cpuCard = "card" + String(cpuCardValue)
        //update score
        
        if playerCardValue > cpuCardValue {
            playerScore += 1
        } else if cpuCardValue > playerCardValue {
            cpuScore += 1
        }
        
    }
}

#Preview {
    ContentView()
}
