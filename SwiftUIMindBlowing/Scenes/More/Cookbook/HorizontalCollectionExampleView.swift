//
//  Copyright © 2019 An Tran. All rights reserved.
//

import SwiftUI

extension Array {
    func chunk(size: Int) -> [[Element]] {
        return stride(from: 0, to: count, by: size).map {
            return Array(self[$0..<Swift.min($0 + size, count)])
        }
    }
}

extension Array: Identifiable where Element: Identifiable {
    public var id: String {
        return map({ "\($0.id)" }).joined(separator: ":")
    }
}

struct HorizontalCollectionExampleView: View {
    @State var width = 3
    @State var spacing: CGFloat = 5
    @State var items: [Int] = Array(1...100)

    var body: some View {
        GeometryReader { proxy in
            ScrollView {
                VStack(alignment: .leading) {
                    ForEach(self.items.chunk(size: self.width), id: \.self) { row in
                        HStack(alignment: .center, spacing: self.spacing) {
                            ForEach(row, id: \.self) { item in
                                Text("\(item)")
                                    .frame(
                                        width: proxy.frame(in: .local).width / CGFloat(self.width) - self.spacing,
                                        height: proxy.frame(in: .local).width / CGFloat(self.width) - self.spacing
                                    )
                                    .background(Color.red)
                            }
                        }
                    }
                    }
                    .background(Color.blue)
                    .offset(x: self.spacing / 2, y: 0)
            }
        }
    }
}


struct HorizontalCollectionExampleView_Previews: PreviewProvider {
    static var previews: some View {
        HorizontalCollectionExampleView()
    }
}

