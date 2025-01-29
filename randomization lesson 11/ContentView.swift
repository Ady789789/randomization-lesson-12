//
//  ContentView.swift
//  randomization lesson 11
//
//  Created by natural health on 1/28/25.
//

import SwiftUI

struct ContentView: View {
    @State private var message = ""
    @State private var photoName = ""
    @State private var photoNumber = 0
    @State private var messageNumber = 0
    
    var body: some View {
        VStack {
            Text(message)
                .font(.largeTitle)
                .fontWeight(.heavy)
                .foregroundStyle(.red)
                .multilineTextAlignment(.center)
                .minimumScaleFactor(0.5)
                .frame(height: 100)
                .animation(.easeIn(duration: 0.15), value: message)
            
            Image(photoName)
                .resizable()
                .scaledToFit()
                .clipShape(RoundedRectangle(cornerRadius: 45))
                .shadow(radius: 50)
                .animation(.default, value: photoName)
            
            Spacer()
            
            Button("Show Message!") {
                let messages = ["You are Awesome!",
                                "You are Great!",
                                "You are Fantastic!",
                                "Fabulous? That's You!",
                                "You  make me Smile!",
                                "When the Genius Bar needs help, they call You!"]
                message = (messages[Int.random(in: 0...messages.count-1)])
                photoName = "photo\(Int.random(in: 0...9))"
      
                
            }
            .buttonStyle(.borderedProminent)
            .font(.title2)
        }
        
        .padding()
    }
}

#Preview {
    ContentView()
}
