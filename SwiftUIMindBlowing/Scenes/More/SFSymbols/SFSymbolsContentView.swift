//
//  Copyright © 2019 An Tran. All rights reserved.
//

// This part is shamelessly taken from https://github.com/jstart/SFSymbols-Playground

import SwiftUI

private var colors: [Color] = [.red, .blue, .black, .gray, .green, .yellow, .orange, .pink, .purple]

struct SFSymbolRow: View {
    var symbol: String

    var body: some View {
        HStack {
            Image(systemName: symbol).foregroundColor(colors.randomElement())
            Divider()
            Text(symbol)
        }
    }
}

struct SFSymbolDetail: View {
    var symbol: String

    var body: some View {
        VStack {
            Image(systemName: symbol)
                .foregroundColor(colors.randomElement())
                .imageScale(.large)
                .scaleEffect(3.0)
                .padding(.bottom, 100)
            Divider()
            Text(symbol).font(.headline)
        }
    }
}

struct SFSymbolsContentView: View {

    @State private var searchQuery = ""

    var body: some View {
        let list = (0..<sfSymbols.count)

        return
            List {
                Section(header: SearchBarView(text: self.$searchQuery)) {
                    ForEach(list.filter {
                        self.searchQuery.isEmpty ? true: "\(sfSymbols[$0])".lowercased().contains(self.searchQuery.lowercased())
                    }, id: \.self) { index in
                        NavigationLink(destination: SFSymbolDetail(symbol: sfSymbols[index])) {
                            SFSymbolRow(symbol: sfSymbols[index])
                        }
                    }
                }
            }
            .navigationBarTitle(Text("SF Symbols"))
    }
}


struct SFSymbolsContentView_Previews: PreviewProvider {
    static var previews: some View {
        SFSymbolsContentView()
    }
}

