//
//  Copyright © 2019 An Tran. All rights reserved.
//

import SwiftUI

struct ToggleExampleView: View {

    var body: some View {
        ExampleView(
            title: "Toggle",
            demoContentView: ToggleExampleDemoView(),
            remoteSourcePath: "Basic/ViewsAndControls/Toggle/ToggleExampleDemoView.swift"
        )
    }
}


struct ToggleExampleView_Previews: PreviewProvider {
    static var previews: some View {
        ToggleExampleView()
    }
}

