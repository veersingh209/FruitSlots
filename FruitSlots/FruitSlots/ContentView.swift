//
//  ContentView.swift
//  FruitSlots
//
//  Created by Veer Singh on 8/18/22.
//

import SwiftUI

struct ContentView: View {
    
    @State var slotImageOne = 1
    @State var slotImageTwo = 2
    @State var slotImageThree = 3
    
    @State var creditsScore = 1000
    
    var body: some View {
        VStack {
            
            Text("Fruit Slots")
                .font(.largeTitle)
                .padding([.top, .leading, .trailing])
            Text("Made by Veer Singh")
                .font(.caption)
            
            Spacer()
            
            HStack {
                Text("Credits:")
                Text(String(creditsScore))
                    .bold()
            }
            
            Spacer()
            
            HStack {
                Image("fruit" + String(slotImageOne))
                    .resizable()
                    .scaledToFit()
                Image("fruit" + String(slotImageTwo))
                    .resizable()
                    .scaledToFit()
                Image("fruit" + String(slotImageThree))
                    .resizable()
                    .scaledToFit()
            }
            .padding()
            
            Spacer()
            
            Button {
                slotImageOne = Int.random(in: 1...3)
                slotImageTwo = Int.random(in: 1...3)
                slotImageThree = Int.random(in: 1...3)
                
                if (slotImageOne == slotImageTwo) && (slotImageTwo == slotImageThree) {
                    // Match
                    creditsScore += 15
                }
                else {
                    creditsScore -= 5
                }
                
            } label: {
                Text("Spin")
                    .fontWeight(.medium)
                    .multilineTextAlignment(.center)
                    .padding(.horizontal, 30)
                    .padding(.vertical, 5)
                    .font(.title2)
                    .foregroundColor(.white)
                    .background(Color.red)
                    .cornerRadius(20)
            }

            Spacer()
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
