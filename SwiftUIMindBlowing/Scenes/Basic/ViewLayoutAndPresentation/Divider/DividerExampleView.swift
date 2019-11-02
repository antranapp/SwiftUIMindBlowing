//
//  Copyright © 2019 An Tran. All rights reserved.
//

import SwiftUI

struct DividerExampleView: View {

    var body: some View {
        ExampleView(
            demoContentView: { () -> DividerExampleDemoView in
                DividerExampleDemoView()
            },
            remoteSourcePath: "https://raw.githubusercontent.com/peacemoon/SwiftUIMindBlowing/master/SwiftUIMindBlowing/Scenes/Basic/ViewLayoutAndPresentation/Divider/DividerExampleDemoView.swift"
        )
        .navigationBarTitle("Spacer")
    }
}

#if DEBUG
struct DividerExampleView_Previews: PreviewProvider {
    static var previews: some View {
        DividerExampleView()
    }
}
#endif
