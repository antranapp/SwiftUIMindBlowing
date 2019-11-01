//
//  Copyright © 2019 An Tran. All rights reserved.
//

import SwiftUI

struct TapGestureExampleDemoView: View {

    @State private var isTapped = false

    var body: some View {

        let tap = TapGesture()
            .onEnded { _ in
                self.isTapped.toggle()
            }

        return VStack {
            Text("Tap on the circle to change its color")
            Circle()
                .fill(isTapped ? Color.blue : Color.red)
                .frame(width: 150, height: 150, alignment: .center)
                .gesture(tap)
        }
    }
}
