//
//  Copyright © 2019 An Tran. All rights reserved.
//

import SwiftUI

struct DasboardView : View {
    var body: some View {
        TabbedView {
            BasicContentView()
                .tabItemLabel(Text("Basic"))
                .tag(0)

            AnimationContentView()
                .tabItemLabel(Text("Animation"))
                .tag(1)

            MindBlowingContentView()
                .tabItemLabel(Text("MindBlowing"))
                .tag(2)

            FullProjectsContentView()
                .tabItemLabel(Text("Projects"))
                .tag(3)

            MoreContentView()
                .tabItemLabel(Text("More"))
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
