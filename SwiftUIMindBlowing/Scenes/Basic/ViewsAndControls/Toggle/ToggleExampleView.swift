//
//  Copyright © 2019 An Tran. All rights reserved.
//

import SwiftUI

struct ToggleExampleView: View {

    var body: some View {
        ExampleView(
            demoContentView: { () -> ToggleExampleDemoView in
                ToggleExampleDemoView()
            },
            remoteSourcePath: "https://raw.githubusercontent.com/peacemoon/SwiftUIMindBlowing/master/SwiftUIMindBlowing/Scenes/Basic/ViewsAndControls/Toggle/ToggleExampleView.swift"
        )
        .navigationBarTitle("Toggle")
    }
}

#if DEBUG
struct ToggleExampleView_Previews: PreviewProvider {
    static var previews: some View {
        ToggleExampleView()
    }
}
#endif
