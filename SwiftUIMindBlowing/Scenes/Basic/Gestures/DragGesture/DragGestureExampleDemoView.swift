//
//  Copyright © 2019 An Tran. All rights reserved.
//

import SwiftUI

struct DragGestureExampleDemoView: View {

    @State private var currentPosition: CGSize = .zero
    @State private var newPosition: CGSize = .zero

    var body: some View {

        let drag = DragGesture()
            .onChanged {
                self.currentPosition = CGSize(width: $0.translation.width + self.newPosition.width, height: $0.translation.height + self.newPosition.height)
            }
            .onEnded {
                self.currentPosition = CGSize(width: $0.translation.width + self.newPosition.width, height: $0.translation.height + self.newPosition.height)
                self.newPosition = self.currentPosition
            }

        return Circle()
                .fill(Color.red)
                .frame(width: 100, height: 100)
                .offset(x: self.currentPosition.width, y: self.currentPosition.height)
                .gesture(drag)
                .animation(.spring())

    }
}
