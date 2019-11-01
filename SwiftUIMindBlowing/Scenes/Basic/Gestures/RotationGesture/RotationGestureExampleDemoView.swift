//
//  Copyright © 2019 An Tran. All rights reserved.
//

import SwiftUI

struct RotationGestureExampleDemoView: View {

    @State private var rotateState: Double = 0

    var body: some View {
        VStack {
            Image("swiftui")
                .frame(width: 200, height: 200)
                .rotationEffect(Angle(degrees: self.rotateState))
                .gesture(RotationGesture()
                    .onChanged { value in
                        self.rotateState = value.degrees
                    }
            )
        }
    }
}
