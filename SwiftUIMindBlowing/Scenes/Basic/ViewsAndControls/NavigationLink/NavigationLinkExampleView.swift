//
//  Copyright © 2019 An Tran. All rights reserved.
//

import SwiftUI

struct NavigationLinkExampleView: View {

    var body: some View {
        ExampleView(
            demoContentView: NavigationLinkExampleDemoView(),
            remoteSourcePath: "https://raw.githubusercontent.com/peacemoon/SwiftUIMindBlowing/master/SwiftUIMindBlowing/Scenes/Basic/ViewsAndControls/NavigationLink/NavigationLinkExampleView.swift"
        )
        .navigationBarTitle("NavigationLink")
    }
}

#if DEBUG
struct NavigationLinkExampleView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationLinkExampleView()
    }
}
#endif
