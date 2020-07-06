//
//  Copyright © 2019 An Tran. All rights reserved.
//

import SwiftUI

struct SequenceGestureExampleView: View {

    var body: some View {
        ExampleView(
            demoContentView: SequenceGestureExampleDemoView(),
            remoteSourcePath: "Basic/Gestures/SequenceGesture/SequenceGestureExampleDemoView.swift"
            )
            .navigationBarTitle("SequenceGesture")
    }
}
