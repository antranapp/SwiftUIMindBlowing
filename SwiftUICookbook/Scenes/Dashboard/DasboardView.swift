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

            SFSymbolsContentView()
                .tabItemLabel(Text("SFSymbols"))
                .tag(2)
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
