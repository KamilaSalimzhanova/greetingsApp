//
//  ContentView.swift
//  greetingsApp
//
//  Created by kamila on 02.03.2025.
//

import SwiftUI

struct ContentView: View {
    
    let message: [DataItemModel] = [
        .init(text: "Hello there", color: .green),
        .init(text: "Welcome to swift programming!", color: .orange),
        .init(text: "Are you ready to,", color: .yellow),
        .init(text: "start exploring?", color: .red),
        .init(text: "Boom.", color: .purple)
    ]
    
    var body: some View {
        VStack(alignment: .leading) {
            VStack(alignment: .leading, spacing: 0) {
                Text("Greetings")
                    .font(.largeTitle)
                    .fontWeight(.semibold)
                Text("Exploring iOS programming")
                    .font(.headline)
                    .fontWeight(.thin)
            }
            Spacer()
            // if doest conforms to Identifieble must be id: \.property
            ForEach(message, id: \.id) { dataItem in
                TextView(text: dataItem.text, color: dataItem.color)
            }
            Spacer()
            Spacer()
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

