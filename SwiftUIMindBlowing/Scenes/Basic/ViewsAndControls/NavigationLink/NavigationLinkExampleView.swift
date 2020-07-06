//
//  Copyright © 2019 An Tran. All rights reserved.
//

import SwiftUI

struct NavigationLinkExampleView: View {

    var body: some View {
        ExampleView(
            title: "NavigationLink",
            demoContentView: NavigationLinkExampleDemoView(),
            remoteSourcePath: "Basic/ViewsAndControls/NavigationLink/NavigationLinkExampleDemoView.swift"
        )
    }
}

struct NavigationLinkExampleView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationLinkExampleView()
    }
}
