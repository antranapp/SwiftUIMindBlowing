//
//  Copyright © 2019 An Tran. All rights reserved.
//

import SwiftUI

struct MagnificationGestureExampleView: View {

    var body: some View {
        ExampleView(
            demoContentView: { () -> MagnificationGestureExampleDemoView in
                MagnificationGestureExampleDemoView()
        },
            remoteSourcePath: "https://raw.githubusercontent.com/peacemoon/SwiftUIMindBlowing/master/SwiftUIMindBlowing/Scenes/Basic/Gestures/MagnificationGesture/MagnificationGestureExampleDemoView.swift"
        )
            .navigationBarTitle("MagnificationGesture")
    }
}

#if DEBUG
struct MagnificationGestureExampleView_Previews: PreviewProvider {
    static var previews: some View {
        MagnificationGestureExampleView()
    }
}
#endif
