//
//  Copyright © 2019 An Tran. All rights reserved.
//

import SwiftUI

struct RotationGestureExampleView: View {

    var body: some View {
        ExampleView(
            demoContentView: RotationGestureExampleDemoView(),
            remoteSourcePath: "https://raw.githubusercontent.com/peacemoon/SwiftUIMindBlowing/master/SwiftUIMindBlowing/Scenes/Basic/Gestures/RotationGesture/RotationGestureExampleDemoView.swift"
            )
            .navigationBarTitle("RotationGesture")
    }
}

#if DEBUG
struct RotationGestureExampleView_Previews: PreviewProvider {
    static var previews: some View {
        RotationGestureExampleView()
    }
}
#endif
