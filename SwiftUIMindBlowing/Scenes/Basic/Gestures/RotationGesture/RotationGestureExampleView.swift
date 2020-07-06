//
//  Copyright © 2019 An Tran. All rights reserved.
//

import SwiftUI

struct RotationGestureExampleView: View {

    var body: some View {
        ExampleView(
            demoContentView: RotationGestureExampleDemoView(),
            remoteSourcePath: "Basic/Gestures/RotationGesture/RotationGestureExampleDemoView.swift"
            )
            .navigationBarTitle("RotationGesture")
    }
}


struct RotationGestureExampleView_Previews: PreviewProvider {
    static var previews: some View {
        RotationGestureExampleView()
    }
}

