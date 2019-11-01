//
//  Copyright © 2019 An Tran. All rights reserved.
//

import SwiftUI

struct MagnificationGestureExampleDemoView: View {

    @State var scale: CGFloat = 1.0

    var body: some View {
        VStack {
            Image("swiftui")
                .resizable()
                .scaleEffect(scale)
                .frame(width: 200, height: 200)
                .gesture(MagnificationGesture()
                    .onChanged {
                        self.scale = $0.magnitude
                    }
            )
        }
    }
}
