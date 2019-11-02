//
//  Copyright © 2019 An Tran. All rights reserved.
//

import SwiftUI

struct ExclusiveGestureExampleDemoView: View {

    @State private var currentPosition: CGSize = .zero
    @State private var newPosition: CGSize = .zero
    @GestureState var isLongPressed = false

    var body: some View {

        let dragGesture = DragGesture()
            .onChanged {
                self.currentPosition = CGSize(width: $0.translation.width + self.newPosition.width, height: $0.translation.height + self.newPosition.height)
            }
            .onEnded {
                self.currentPosition = CGSize(width: $0.translation.width + self.newPosition.width, height: $0.translation.height + self.newPosition.height)
                self.newPosition = self.currentPosition
            }

        let longPressGesture = LongPressGesture()
            .updating($isLongPressed) { value, state, transcation in
                state = value
        }
        .exclusively(before: dragGesture)

        return VStack{
            Circle()
                .fill(isLongPressed ? Color.red : Color.blue)
                .frame(width: 200, height: 200)
                .offset(x: self.currentPosition.width, y: self.currentPosition.height)
                .gesture(longPressGesture)
                .scaleEffect(isLongPressed ? 1.5 : 1)
                .animation(.spring())
        }
    }
}

struct ExclusiveGestureExampleDemoView_Previews: PreviewProvider {
    static var previews: some View {
        ExclusiveGestureExampleDemoView()
    }
}
