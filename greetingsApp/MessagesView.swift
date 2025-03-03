//
//  MessagesViews.swift
//  greetingsApp
//
//  Created by kamila on 02.03.2025.
//

import SwiftUI

struct MessagesView: View {
    let message: [DataItemModel] = [
        .init(text: "Hello there", color: .green),
        .init(text: "Welcome to swift programming!", color: .orange),
        .init(text: "Are you ready to,", color: .yellow),
        .init(text: "start exploring?", color: .red),
        .init(text: "Boom.", color: .purple)
    ]
    var body: some View {
        // if doest conforms to Identifieble must be id: \.property
        VStack(alignment: .leading) {
            ForEach(message, id: \.id) { dataItem in
                TextView(text: dataItem.text, color: dataItem.color)
            }
        }
    }
}

struct MessagesView_Previews: PreviewProvider {
    static var previews: some View {
        MessagesView()
    }
}
