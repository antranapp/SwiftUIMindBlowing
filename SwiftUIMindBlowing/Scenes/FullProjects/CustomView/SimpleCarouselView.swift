//
//  Copyright © 2019 An Tran. All rights reserved.
//

import SwiftUI

struct SimpleCarouselView: View {

    @State var colors = [
        Carousel.Item(color: Color(#colorLiteral(red: 0.9395157099, green: 0.9470053315, blue: 0.8012786508, alpha: 1))),
        Carousel.Item(color: Color(#colorLiteral(red: 0.1700480282, green: 0.6759030223, blue: 0.692445457, alpha: 1))),
        Carousel.Item(color: Color(#colorLiteral(red: 0.08263953775, green: 0.2312970459, blue: 0.4131723642, alpha: 1))),
        Carousel.Item(color: Color(#colorLiteral(red: 0.8947107196, green: 0.6190182567, blue: 0.1944372058, alpha: 1))),
        Carousel.Item(color: Color(#colorLiteral(red: 0.995511353, green: 0.9055879712, blue: 0.994179666, alpha: 1))),
        Carousel.Item(color: Color(#colorLiteral(red: 0.9775201678, green: 0.8466212153, blue: 0.2689898014, alpha: 1)))
    ]

    var body: some View {
        VStack {
            Carousel(items: $colors)
        }
        .navigationBarTitle("Simple Carousel")
    }
}

// https://github.com/markwinton/carousel
struct Carousel: View {

    struct Item: Identifiable {
        let id = NSUUID()
        var color: Color

        static let width: CGFloat = 200
        static let height: CGFloat = 200
    }

    @Binding var items: [Item]

    @State private var anchor: CGFloat = 0

    @GestureState private var translation: CGFloat?

    private var offset: CGFloat { anchor + (translation ?? 0) }

    private var stackWidth: CGFloat { CGFloat(items.count) * Item.width }

    private func nearestIndex(to offset: CGFloat) -> Int {
        var index = (-offset/Item.width).rounded()
        index = max(index, 0)
        index = min(index, CGFloat(items.count - 1))
        return Int(index)
    }

    func select(index: Int) {
        let offset = CGFloat(index) * Item.width

        withAnimation(.easeInOut(duration: 0.2)) {
            anchor = -offset
        }
    }

    var body: some View {
        GeometryReader() { geometry in
            HStack(alignment: .center, spacing: 0) {
                ForEach(self.items.indices) { i in
                    Rectangle()
                        .frame(width: Item.width, height: Item.height)
                        .foregroundColor(self.items[i].color)
                        .onTapGesture {
                            self.select(index: i)
                    }
                }
            }
            .offset(x: self.offset)
            .gesture(
                DragGesture().updating(self.$translation) { value, state, transaction in
                    state = value.translation.width
                }
                .onEnded { value in
                    self.anchor += value.translation.width

                    let index = self.nearestIndex(to: self.anchor)

                    self.select(index: index)
                }
            )
                .position(x: geometry.size.width/2 + self.stackWidth/2 - Item.width/2, y: geometry.size.height/2)
        }
    }

}

struct SimpleCarouselView_Previews: PreviewProvider {
    static var previews: some View {
        SimpleCarouselView()
    }
}
