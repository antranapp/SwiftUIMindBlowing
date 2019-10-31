//
//  Copyright © 2019 An Tran. All rights reserved.
//

import SwiftUI

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
