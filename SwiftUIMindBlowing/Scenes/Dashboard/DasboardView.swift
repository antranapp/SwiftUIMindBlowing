//
//  Copyright © 2019 An Tran. All rights reserved.
//

import SwiftUI

struct DasboardView : View {
    var body: some View {
        TabbedView {
            BasicContentView()
                .tabItemLabel(VStack {
                    Image("ios-egg")
                    Text("Basic")
                })
                .tag(0)

            AnimationContentView()
                .tabItemLabel(VStack {
                    Image("ios-wand")
                    Text("Animation")
                })
                .tag(1)

            MindBlowingContentView()
                .tabItemLabel(VStack {
                    Image("ios-rocket")
                    Text("MindBlowing")
                })
                .tag(2)

            FullProjectsContentView()
                .tabItemLabel(VStack {
                    Image("ios-journal")
                    Text("Projects")
                })
                .tag(3)

            MoreContentView()
                .tabItemLabel(VStack {
                    Image("ios-beer")
                    Text("More")
                })
                .tag(4)
        }
    }
}

#if DEBUG
struct DasboardView_Previews : PreviewProvider {
    static var previews: some View {
        DasboardView()
    }
}
#endif
