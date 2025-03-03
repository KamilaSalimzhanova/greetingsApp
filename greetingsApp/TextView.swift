//
//  TextView.swift
//  greetingsApp
//
//  Created by kamila on 02.03.2025.
//

import SwiftUI

struct TextView: View {
    // parameters
    var text: String
    @State var color: Color
    
    let colors: [Color] = [
            .red,
            .green,
            .blue,
            .orange,
            .yellow,
            .purple,
            Color(red: 0.5, green: 0, blue: 0.5),
            Color(red: 0, green: 0.5, blue: 0.5),
            Color(red: 139/255, green: 207/255, blue: 240/255),
            Color(red: 1, green: 215/255, blue: 0)
    ]
    
    var body: some View {
        Text(text)
            .fontWeight(.semibold)
            .padding()
            .foregroundStyle(.white)
            .background(color.opacity(0.5))
            .cornerRadius(/*@START_MENU_TOKEN@*/20.0/*@END_MENU_TOKEN@*/)
            .shadow(color: color, radius: 10, x: 0, y: 3)
            .onTapGesture {
                withAnimation() {
                    color = colors.randomElement() ?? .red
                }
            }
    }
}

struct TextView_Previews: PreviewProvider {
    static var previews: some View {
        VStack {
            TextView(text: "Hello there", color: .green)
            TextView(text: "Hello", color: .blue)
            TextView(text: "Hi", color: .red)
        }
    }
}
