//
//  Copyright © 2019 An Tran. All rights reserved.
//

import SwiftUI

struct ScrollViewExampleDemoView : View {

    var body: some View {
        ScrollView(.horizontal, showsIndicators: true) {
            HStack {
                ForEach(emojis) { event in
                    VStack {
                        Text(event.emoji)
                            .font(.system(size: 50))
                        Text(event.name)
                            .font(.system(.caption))
                    }
                    .frame(width: 100, height: 100)
                    .padding(40)
                    .background(event.color)
                    .cornerRadius(10)
                }
            }
        }
        .padding()
    }
}

struct Emoji: Identifiable {
    let id: Int
    let name: String
    let emoji: String
    let color: Color
}

let emojis = [
    Emoji(id: 0, name: "Party", emoji: "🥳", color: Color.red),
    Emoji(id: 1, name: "Wedding", emoji: "👰", color: Color.blue),
    Emoji(id: 2, name: "Congratulation", emoji: "🎉", color: Color.green),
    Emoji(id: 3, name: "Christmas", emoji: "🎄", color: Color.purple),
]
