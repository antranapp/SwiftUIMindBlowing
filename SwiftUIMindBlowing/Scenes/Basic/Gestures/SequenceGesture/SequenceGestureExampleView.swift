//
//  Copyright © 2019 An Tran. All rights reserved.
//

import SwiftUI

struct SequenceGestureExampleView: View {

    var body: some View {
        ExampleView(
            demoContentView: SequenceGestureExampleDemoView(),
            remoteSourcePath: "https://raw.githubusercontent.com/peacemoon/SwiftUIMindBlowing/master/SwiftUIMindBlowing/Scenes/Basic/Gestures/SequenceGesture/SequenceGestureExampleDemoView.swift"
            )
            .navigationBarTitle("SequenceGesture")
    }
}

#if DEBUG
struct SequenceGestureExampleView_Previews: PreviewProvider {
    static var previews: some View {
        SequenceGestureExampleView()
    }
}
#endif
