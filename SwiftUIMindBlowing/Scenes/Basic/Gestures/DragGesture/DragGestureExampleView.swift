//
//  Copyright © 2019 An Tran. All rights reserved.
//

import SwiftUI

struct DragGestureExampleView: View {

    var body: some View {
        ExampleView(
            demoContentView: DragGestureExampleDemoView(),
            remoteSourcePath: "https://raw.githubusercontent.com/peacemoon/SwiftUIMindBlowing/master/SwiftUIMindBlowing/Scenes/Basic/Gestures/DragGesture/DragGestureExampleDemoView.swift"
        )
        .navigationBarTitle("DragGesture")
    }
}

#if DEBUG
struct DragGestureExampleView_Previews: PreviewProvider {
    static var previews: some View {
        DragGestureExampleView()
    }
}
#endif
