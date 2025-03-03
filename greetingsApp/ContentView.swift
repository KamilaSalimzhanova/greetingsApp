//
//  ContentView.swift
//  greetingsApp
//
//  Created by kamila on 02.03.2025.
//

import SwiftUI

struct ContentView: View {
    @Binding var language: String
    @Binding var layoutDirection: String
    var body: some View {
        NavigationStack {
            ZStack {
                BackgroundView()
                VStack(alignment: .leading) {
                    TitleView()
                    Spacer()
                    MessagesView()
                    Spacer()
                    Spacer()
                }
                .padding()
            }
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
                    LanguageOptionsView(language: $language, layoutDirection: $layoutDirection)
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(language: .constant("en"), layoutDirection: .constant(LEFT_TO_RIGHT))
            //.preferredColorScheme(.dark)
    }
}

