//
//  ContentView.swift
//  greetingsApp
//
//  Created by kamila on 02.03.2025.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        //ZStack {
//            LinearGradient(
//                colors: [
//                    Color(red: 230 / 255.0, green: 240 / 255.0, blue: 255 / 255.0),
//                    Color(red: 200 / 255.0, green: 230 / 255.0, blue: 255 / 255.0),
//                    Color(red: 210 / 255.0, green: 250 / 255.0, blue: 235 / 255.0)
//                ],
//                startPoint: .topLeading,
//                endPoint: .bottomTrailing
//            )
//            .ignoresSafeArea()
        VStack(alignment: .leading) {
            TextView(text: "Hello there", color: .green)
            TextView(text: "Welcome to swift programming!", color: .orange)
            TextView(text: "Are you ready to,", color: .yellow)
            TextView(text: "start exploring", color: .red)
            TextView(text: "Boom.", color: .purple)
        }
        .padding()
        //}
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

