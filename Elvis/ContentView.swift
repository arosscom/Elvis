//
//  ContentView.swift
//  Elvis
//
//  Created by Ross Morton on 05/06/2025.
//

import SwiftUI

struct ContentView: View {
    
    @State private var message = "Love"
   
    @State private var image = Image(systemName: "heart")
    
    var body: some View {
        
        VStack {
            
            VStack() {
                HStack {
                    Text("  What's So Funny")
                    Spacer()
                }
                HStack {
                    Text("  'Bout")
                    Spacer()
                }
            }
            .font(.largeTitle)
            .fontWeight(.heavy)
            .foregroundStyle(.purple)
                
            Spacer()
 
            image
                .resizable()
                .scaledToFit()
                .frame(width: 300, height: 300)
            
            Spacer()
        
            Text(message)
                .font(.system(size: 48))
                .fontWeight(.heavy)
                .foregroundStyle(.purple)
            
            Spacer()

            
            HStack {
                Button("Peace") {
                    message = "Peace"
                    image = Image(systemName: "peacesign")
                }
                Button("Love") {
                    message = "Love"
                    image = Image(systemName: "heart")
                }
                Button("Understanding") {
                    message = "Understanding"
                    image = Image(systemName: "lightbulb")
                }

            }
            .buttonStyle(.borderedProminent)
            .font(.title2)
            .tint(.purple)
            
            
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
