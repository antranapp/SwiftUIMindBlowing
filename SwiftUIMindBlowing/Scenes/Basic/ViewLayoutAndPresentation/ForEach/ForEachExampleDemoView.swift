//
//  Copyright © 2019 An Tran. All rights reserved.
//

import SwiftUI

struct ForEachExampleDemoView: View {

    @State var uiStacks = ["UIKit", "UIKit for Mac", "SwiftUI"]

    var body: some View {
        List {
            ForEach(uiStacks, id: \.self) { uiStack in
                Text(uiStack)
            }
        }
    }
}
