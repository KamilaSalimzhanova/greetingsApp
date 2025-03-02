//
//  ContentView.swift
//  greetingsApp
//
//  Created by kamila on 02.03.2025.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            LinearGradient(
                colors: [
                    Color(red: 230 / 255.0, green: 240 / 255.0, blue: 255 / 255.0),
                    Color(red: 200 / 255.0, green: 230 / 255.0, blue: 255 / 255.0),
                    Color(red: 210 / 255.0, green: 250 / 255.0, blue: 235 / 255.0)
                ],
                startPoint: .topLeading,
                endPoint: .bottomTrailing
            )
            .ignoresSafeArea()
            VStack {
                Image(systemName: "globe")
                    .imageScale(.large)
                    .foregroundColor(.accentColor)
                Text("Greetings!")
                    .font(.largeTitle)
                    .fontWeight(.semibold)
                    .padding()
                    .foregroundStyle(.purple)
                    .background(.ultraThinMaterial)
                    .cornerRadius(/*@START_MENU_TOKEN@*/20.0/*@END_MENU_TOKEN@*/)
                    .shadow(color: .purple, radius: 10, x: 5.0, y: 5)
                
            }
            .padding()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

