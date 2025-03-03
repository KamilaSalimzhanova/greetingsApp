//
//  TitleView.swift
//  greetingsApp
//
//  Created by kamila on 02.03.2025.
//

import SwiftUI

struct TitleView: View {
    let lineWidth = 15.0
    let circleDiameter = 70.0
    @State private var subtitle: LocalizedStringKey = "Exploring iOS programming"
    @State private var isRotated = false
    
    var angle: Angle {
        isRotated ? .zero : Angle(degrees: 360)
    }
    var angularGradient: AngularGradient {
        AngularGradient(gradient: Gradient(colors: [.pink, .purple, .blue, .orange]),
            center: .center,
            angle: .zero)
    }
    
    private let subtitles: [LocalizedStringKey] = ["Exploring iOS programming", "Learning how to bake", "Programming recipes"]
    
    var body: some View {
        HStack {
            VStack(alignment: .leading, spacing: 0) {
                Text("Greetings")
                    .font(.largeTitle)
                    .fontWeight(.semibold)
                Text(subtitle)
                    .font(.headline)
                    .fontWeight(.thin)
                
            }
            .onTapGesture {
                subtitle = subtitles.randomElement() ??
                LocalizedStringKey("")
            }
            Spacer()
            Circle()
                .strokeBorder(angularGradient,
                    lineWidth: lineWidth)
                .rotationEffect(angle)
                .frame(width: circleDiameter, height: circleDiameter)
                .onTapGesture {
                    withAnimation(.easeIn(duration: 2)) {
                        isRotated.toggle()
                    }
                }
        }
    }
}

struct TitleView_Previews: PreviewProvider {
    static var previews: some View {
        VStack {
            TitleView()
            Spacer()
        }.padding()
    }
}
