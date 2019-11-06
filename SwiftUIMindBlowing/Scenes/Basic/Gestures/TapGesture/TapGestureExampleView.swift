//
//  Copyright © 2019 An Tran. All rights reserved.
//

import SwiftUI

struct TapGestureExampleView: View {

    var body: some View {
        ExampleView(
            demoContentView:TapGestureExampleDemoView(),
            remoteSourcePath: "https://raw.githubusercontent.com/peacemoon/SwiftUIMindBlowing/master/SwiftUIMindBlowing/Scenes/Basic/Gestures/TapGesture/TapGestureExampleDemoView.swift"
        )
        .navigationBarTitle("TapGesture")
    }
}

#if DEBUG
struct TapGestureExampleView_Previews: PreviewProvider {
    static var previews: some View {
        TapGestureExampleView()
    }
}
#endif
