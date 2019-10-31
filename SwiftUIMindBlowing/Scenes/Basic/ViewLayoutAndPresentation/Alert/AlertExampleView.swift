//
//  Copyright © 2019 An Tran. All rights reserved.
//

import SwiftUI

struct AlertExampleView: View {

    var body: some View {
        ExampleView(
            demoContentView: { () -> HStackExampleDemoView in
                HStackExampleDemoView()
        },
            remoteSourcePath: "https://raw.githubusercontent.com/peacemoon/SwiftUIMindBlowing/master/SwiftUIMindBlowing/Scenes/Basic/ViewLayoutAndPresentation/Alert/AlertExampleDemoView.swift"
        )
            .navigationBarTitle("Alert")
    }
}

#if DEBUG
struct AlertExampleView_Previews: PreviewProvider {
    static var previews: some View {
        AlertExampleView()
    }
}
#endif
