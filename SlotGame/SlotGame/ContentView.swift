//
//  ContentView.swift
//  SlotGame
//
//  Created by serkan gündoğan on 9.07.2022.
//

import SwiftUI

struct ContentView: View {
    @State var credits = 1000
    @State var slot1 = 1
    @State var slot2 = 1
    @State var slot3 = 1
    
    var body: some View {
        VStack {
            Spacer()
            Text("WELCOME TO SLOT")
                .font(.largeTitle)
                .padding()
            Spacer()
            
            HStack {
                Text("Credits :").padding([.top, .leading, .bottom])
                Text(String(credits)).padding([.top, .bottom, .trailing])
            }
            Spacer()
            HStack{
                Image("fruit\(slot1)").resizable().aspectRatio(contentMode: .fit)
                Image("fruit\(slot2)").resizable().aspectRatio(contentMode: .fit)
                Image("fruit\(slot3)").resizable().aspectRatio(contentMode: .fit)
            }
            Spacer()
            Button {
                
                slot1 = Int.random(in: 1...3)
                slot2 = Int.random(in: 1...3)
                slot3 = Int.random(in: 1...3)
                
                if slot1 == slot2 && slot2 == slot3 {
                    //match situation
                    credits += 15
                }
                else {
                    credits -= 20
                }
                
            } label: {
                Text("Spin").font(.title).foregroundColor(Color.white).padding(.all).background(Color.pink).cornerRadius(20.0)
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
