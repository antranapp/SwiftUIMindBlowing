//
//  Copyright © 2019 An Tran. All rights reserved.
//

import SwiftUI

struct DragGestureExampleView: View {

    var body: some View {
        ExampleView(
            demoContentView: DragGestureExampleDemoView(),
            remoteSourcePath: "Basic/Gestures/DragGesture/DragGestureExampleDemoView.swift"
        )
        .navigationBarTitle("DragGesture")
    }
}


struct DragGestureExampleView_Previews: PreviewProvider {
    static var previews: some View {
        DragGestureExampleView()
    }
}

