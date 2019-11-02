//
//  Copyright © 2019 An Tran. All rights reserved.
//

import SwiftUI

struct ExclusiveGestureExampleView: View {

    var body: some View {
        ExampleView(
            demoContentView: { () -> ExclusiveGestureExampleDemoView in
                ExclusiveGestureExampleDemoView()
            },
            remoteSourcePath: "https://raw.githubusercontent.com/peacemoon/SwiftUIMindBlowing/master/SwiftUIMindBlowing/Scenes/Basic/Gestures/SimultanousGesture/ExclusiveGestureExampleDemoView.swift"
            )
            .navigationBarTitle("ExclusiveGesture")
    }
}

#if DEBUG
struct ExclusiveGestureExampleView_Previews: PreviewProvider {
    static var previews: some View {
        ExclusiveGestureExampleView()
    }
}
#endif
