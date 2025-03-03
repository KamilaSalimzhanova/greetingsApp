//
//  greetingsAppApp.swift
//  greetingsApp
//
//  Created by kamila on 02.03.2025.
//

import SwiftUI


@main
struct greetingsAppApp: App {
    @State private var language: String = "en"
    @State private var layoutDirectionLang: String = LEFT_TO_RIGHT
    private var layoutDirection: LayoutDirection {
        layoutDirectionLang == LEFT_TO_RIGHT ? .leftToRight : .rightToLeft
    }
    
    var body: some Scene {
        WindowGroup {
            ContentView(language: $language, layoutDirection: $layoutDirectionLang)
                .environment(\.locale, Locale(identifier: language))
                .environment(\.layoutDirection, layoutDirection)
        }
//        .task {
//            // Configure and load your tips at app launch.
//            do {
//                try Tips.configure()
//            }
//            catch {
//                // Handle TipKit errors
//                print("Error initializing TipKit \(error.localizedDescription)")
//            }
//        }
    }
}
