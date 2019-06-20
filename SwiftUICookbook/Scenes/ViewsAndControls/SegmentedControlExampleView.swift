//
//  Copyright © 2019 An Tran. All rights reserved.
//

import SwiftUI

struct SegmentedControlExampleView : View {

    @State var index = 0
    let uiStacks = ["UIKit", "UIKit for Mac", "SwiftUI"]

    var body: some View {
        VStack {
            Text(uiStacks[index])
            SegmentedControl(selection: $index) {
                ForEach(0..<uiStacks.count) { index in
                    Text(self.uiStacks[index])
                }
            }
        }
        .navigationBarTitle(Text("SegmentedControl"))
        .padding()

    }
}

#if DEBUG
struct SegmentedControlExampleView_Previews : PreviewProvider {
    static var previews: some View {
        SegmentedControlExampleView()
    }
}
#endif
