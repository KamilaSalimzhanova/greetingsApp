//
//  BackgroundView.swift
//  greetingsApp
//
//  Created by kamila on 02.03.2025.
//

import SwiftUI

struct BackgroundView: View {
    var body: some View {
        LinearGradient(colors:
//                            [.blue, .red, .yellow, .green, .yellow, .indigo],
                       [.blue,
                        Color(red: 139/255, green: 80/255, blue: 240/255)],
                       startPoint: .topLeading,
                       endPoint: .bottomTrailing)
            .opacity(0.3)
            .ignoresSafeArea()
    }
}

struct BackgroundView_Previews: PreviewProvider {
    static var previews: some View {
        BackgroundView()
    }
}
