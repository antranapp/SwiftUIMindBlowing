//
//  Copyright © 2019 An Tran. All rights reserved.
//

import SwiftUI

struct TapGestureExampleView: View {

    var body: some View {
        ExampleView(
            demoContentView:TapGestureExampleDemoView(),
            remoteSourcePath: "Basic/Gestures/TapGesture/TapGestureExampleDemoView.swift"
        )
        .navigationBarTitle("TapGesture")
    }
}


struct TapGestureExampleView_Previews: PreviewProvider {
    static var previews: some View {
        TapGestureExampleView()
    }
}

