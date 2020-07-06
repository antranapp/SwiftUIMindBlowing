//
//  Copyright © 2019 An Tran. All rights reserved.
//

import SwiftUI

struct SimultanousGestureExampleView: View {

    var body: some View {
        ExampleView(
            demoContentView: SimultanousGestureExampleDemoView(),
            remoteSourcePath: "Basic/Gestures/SimultanousGesture/SimultanousGestureExampleDemoView.swift"
            )
            .navigationBarTitle("SimultanousGesture")
    }
}
