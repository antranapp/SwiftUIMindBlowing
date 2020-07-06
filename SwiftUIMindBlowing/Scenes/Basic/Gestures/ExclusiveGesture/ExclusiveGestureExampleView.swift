//
//  Copyright © 2019 An Tran. All rights reserved.
//

import SwiftUI

struct ExclusiveGestureExampleView: View {

    var body: some View {
        ExampleView(
            demoContentView: ExclusiveGestureExampleDemoView(),
            remoteSourcePath: "Basic/Gestures/ExclusiveGesture/ExclusiveGestureExampleDemoView.swift"
            )
            .navigationBarTitle("ExclusiveGesture")
    }
}
