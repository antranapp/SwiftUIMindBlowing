//
//  Copyright © 2019 An Tran. All rights reserved.
//

import SwiftUI

struct NavigationLinkExampleView: View {

    var body: some View {
        ExampleView(
            demoContentView: { () -> NavigationLinkExampleDemoView in
                NavigationLinkExampleDemoView()
            },
            remoteSourcePath: "https://raw.githubusercontent.com/peacemoon/SwiftUIMindBlowing/master/SwiftUIMindBlowing/Scenes/Basic/ViewsAndControls/NavigationLinkExampleView.swift"
        )
        .navigationBarTitle("NavigationLink")
    }
}

struct NavigationLinkExampleDemoView: View {
    
    var body: some View {
        NavigationLink(destination: PushedView()) {
            Text("Push a new view")
        }
        .navigationBarTitle(Text("NavigationLink"))
    }
}

private struct PushedView: View {
    var body: some View {
        Text("View is pushed.")
    }
}

#if DEBUG
struct NavigationLinkExampleView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationLinkExampleView()
    }
}
#endif
