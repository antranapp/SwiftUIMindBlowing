//
//  Copyright © 2019 An Tran. All rights reserved.
//

import SwiftUI

struct WalletCardExampleView : View {

    @State var translation = CGSize.zero
    @State var selected: Int? = nil
    let totalViews = 7

    var body: some View {
        let dragGesture = DragGesture()
            .onChanged { value in
                self.translation = value.translation
            }
            .onEnded { _ in
                withAnimation(.basic(duration: 0.3, curve: .easeOut)) {
                    self.translation = .zero
                }
            }

        return
            ZStack {
                ForEach(0..<totalViews) { index in
                    Color.red
                        .cornerRadius(2)
                    .border(Color.black, width: 2, cornerRadius: 20)
                    .offset(CGSize(width: 0, height: self.cardTranslation(index)))
                    .gesture(
                        TapGesture()
                            .onEnded({
                                withAnimation(.basic(duration: 0.4, curve: .easeInOut)) {
                                    if self.selected != nil {
                                        self.selected = nil
                                    } else {
                                        self.selected = index
                                    }
                                }
                            })
                    )
                }
            }
            .offset(x: 0, y: -200)
            .frame(width: 300, height: 300)
            .aspectRatio(1, contentMode: .fill)
            .gesture(dragGesture)
    }

    func cardTranslation(_ index: Int) -> CGFloat {
        if let selected = selected {
            if index == selected {
                return -50
            } else {
                return 1000
            }
        } else {
            return max(CGFloat(index * 30) + self.translation.height * (CGFloat(index + 1) / CGFloat(totalViews + 1)), 0.0)
        }
    }
}

#if DEBUG
struct WalletCardExampleView_Previews : PreviewProvider {
    static var previews: some View {
        WalletCardExampleView()
    }
}
#endif
