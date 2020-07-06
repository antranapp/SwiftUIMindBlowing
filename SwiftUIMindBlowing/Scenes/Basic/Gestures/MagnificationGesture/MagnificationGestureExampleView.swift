//
//  Copyright © 2019 An Tran. All rights reserved.
//

import SwiftUI

struct MagnificationGestureExampleView: View {

    var body: some View {
        ExampleView(
            demoContentView: MagnificationGestureExampleDemoView(),
            remoteSourcePath: "Basic/Gestures/MagnificationGesture/MagnificationGestureExampleDemoView.swift"
        )
        .navigationBarTitle("MagnificationGesture")
    }
}


struct MagnificationGestureExampleView_Previews: PreviewProvider {
    static var previews: some View {
        MagnificationGestureExampleView()
    }
}

