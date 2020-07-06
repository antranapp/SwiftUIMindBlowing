//
//  Copyright © 2019 An Tran. All rights reserved.
//

import SwiftUI

struct LongPressGestureExampleView: View {

    var body: some View {
        ExampleView(
            demoContentView: LongPressGestureExampleDemoView(),
            remoteSourcePath: "Basic/Gestures/LongPressGesture/LongPressGestureExampleDemoView.swift"
        )
        .navigationBarTitle("LongPressGesture")
    }
}


struct LongPressGestureExampleView_Previews: PreviewProvider {
    static var previews: some View {
        LongPressGestureExampleView()
    }
}

