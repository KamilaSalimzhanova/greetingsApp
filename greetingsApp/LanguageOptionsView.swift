//
//  LanguageOptionsView.swift
//  greetingsApp
//
//  Created by kamila on 02.03.2025.
//

import SwiftUI

struct LanguageOptionsView: View {
    @Binding var language: String
    @Binding var layoutDirection: String
    var body: some View {
        Image(systemName: "gearshape.fill")
            .contextMenu{
                Button("English") {
                    language = "en"
                    layoutDirection = LEFT_TO_RIGHT
                }
                Button("Russian") {
                    language = "ru"
                    layoutDirection = LEFT_TO_RIGHT
                }
                Button("Hebrew") {
                    language = "he"
                    layoutDirection = RIGHT_TO_LEFT
                }
                Button("Arabic") {
                    language = "ar"
                    layoutDirection = RIGHT_TO_LEFT
                }
            }
    }
}

struct LanguageOptionsView_Previews: PreviewProvider {
    static var previews: some View {
        LanguageOptionsView(language: .constant("en"), layoutDirection: .constant(LEFT_TO_RIGHT))
    }
}
